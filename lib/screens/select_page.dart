import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swipezone/domains/location_manager.dart';
import 'package:swipezone/repositories/models/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:swipezone/repositories/models/categories.dart';

enum SortOption { NameAZ, NameZA, TypeAZ, TypeZA, Proximity }

class SelectPage extends StatefulWidget {
  final String title;

  const SelectPage({super.key, required this.title});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  Map<Location, bool> plans = {};
  List<Location> filteredLocations = [];
  String searchQuery = '';
  SortOption currentSortOption = SortOption.NameAZ;
  Set<Categories> selectedCategories = Set<Categories>();
  Position? userPosition;
  double maxDistance = double.infinity; // Distance maximale pour le filtrage

  @override
  void initState() {
    super.initState();
    _loadPlans();
    _getUserLocation();
  }

  Future<void> _loadPlans() async {
    Map<Location, bool> fetchedPlans = LocationManager().filters;
    setState(() {
      plans = fetchedPlans;
      filteredLocations = plans.keys.toList();
      _sortAndFilterLocations();
    });
  }

  Future<void> _getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition();
      setState(() {
        userPosition = position;
        _sortAndFilterLocations(); // Appel pour trier et filtrer après avoir obtenu la position
      });
    } catch (e) {
      print("Error getting user location: $e");
    }
  }

  void _sortAndFilterLocations() {
    filteredLocations = plans.keys.where((location) {
      bool matchesSearch = location.nom.toLowerCase().contains(searchQuery.toLowerCase()) ||
          location.category.toString().toLowerCase().contains(searchQuery.toLowerCase());
      bool matchesCategory = selectedCategories.isEmpty || selectedCategories.contains(location.category);

      // Filtrage par proximité
      bool matchesProximity = true;
      if (userPosition != null && maxDistance != double.infinity) {
        double distance = Geolocator.distanceBetween(
            userPosition!.latitude, userPosition!.longitude,
            location.localization.lat!, location.localization.lng!
        );
        matchesProximity = distance <= maxDistance;
      }

      return matchesSearch && matchesCategory && matchesProximity;
    }).toList();

    // Tri des lieux après filtrage
    filteredLocations.sort((a, b) {
      switch (currentSortOption) {
        case SortOption.NameAZ:
          return a.nom.compareTo(b.nom);
        case SortOption.NameZA:
          return b.nom.compareTo(a.nom);
        case SortOption.TypeAZ:
          return a.category.toString().compareTo(b.category.toString());
        case SortOption.TypeZA:
          return b.category.toString().compareTo(a.category.toString());
        case SortOption.Proximity:
          if (userPosition != null) {
            double distanceA = Geolocator.distanceBetween(
                userPosition!.latitude, userPosition!.longitude,
                a.localization.lat!, a.localization.lng!
            );
            double distanceB = Geolocator.distanceBetween(
                userPosition!.latitude, userPosition!.longitude,
                b.localization.lat!, b.localization.lng!
            );
            return distanceA.compareTo(distanceB);
          }
          return 0; // Si la position de l'utilisateur n'est pas disponible
      }
    });

    // Mettre à jour l'état des cases à cocher après le filtrage
    setState(() {});
  }

  void _toggleAllLocations(bool? value) {
    setState(() {
      for (var key in filteredLocations) { // Ne sélectionner que les lieux visibles
        plans[key] = value ?? false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          PopupMenuButton<SortOption>(
            onSelected: (SortOption value) {
              setState(() {
                currentSortOption = value;
                _sortAndFilterLocations();
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SortOption>>[
              const PopupMenuItem<SortOption>(
                value: SortOption.NameAZ,
                child: Text('Nom A-Z'),
              ),
              const PopupMenuItem<SortOption>(
                value: SortOption.NameZA,
                child: Text('Nom Z-A'),
              ),
              const PopupMenuItem<SortOption>(
                value: SortOption.TypeAZ,
                child: Text('Type A-Z'),
              ),
              const PopupMenuItem<SortOption>(
                value: SortOption.TypeZA,
                child: Text('Type Z-A'),
              ),
              const PopupMenuItem<SortOption>(
                value: SortOption.Proximity,
                child: Text('Par proximité'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                  _sortAndFilterLocations();
                });
              },
              decoration: InputDecoration(
                labelText: 'Rechercher',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Wrap(
            spacing: 8.0,
            children: Categories.values.map((category) {
              return FilterChip(
                label: Text(category.toString().split('.').last),
                selected: selectedCategories.contains(category),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      selectedCategories.add(category);
                    } else {
                      selectedCategories.remove(category);
                    }
                    _sortAndFilterLocations();
                  });
                },
              );
            }).toList(),
          ),

          // Slider pour le filtrage par proximité
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Text('Distance maximale : ${maxDistance == double.infinity ? "Illimité" : (maxDistance / 1000).toStringAsFixed(1)} km'),
                Slider(
                  value: maxDistance == double.infinity ? 100 : maxDistance,
                  min: 0,
                  max: 100000, // Maximum de 100 km
                  divisions: 100,
                  label: maxDistance == double.infinity ? 'Illimité' : '${(maxDistance / 1000).toStringAsFixed(1)} km',
                  onChanged: (value) {
                    setState(() {
                      maxDistance = value == 100000 ? double.infinity : value; // Illimité si maximum atteint
                      _sortAndFilterLocations();
                    });
                  },
                ),
              ],
            ),
          ),

          CheckboxListTile(
            title: Text('Sélectionner/Désélectionner tout'),
            value: filteredLocations.isNotEmpty && filteredLocations.every((location) => plans[location] == true),
            onChanged: filteredLocations.isEmpty ? null : _toggleAllLocations,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: filteredLocations.length,
              itemBuilder: (context, index) {
                Location location = filteredLocations[index];
                bool isCheck = plans[location] ?? false;
                return ListTile(
                  title: Text(location.nom),
                  subtitle: Text(location.category.toString().split('.').last),
                  trailing: Checkbox(
                    value: isCheck,
                    onChanged: (val) {
                      setState(() {
                        plans[location] = val ?? false;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          List<Location> selectedLocations = plans.entries
              .where((entry) => entry.value)
              .map((entry) => entry.key)
              .toList();

          context.push('/planningpage', extra: selectedLocations);
        },
        tooltip: 'Add plan',
        child: const Icon(Icons.add),
      ),
    );
  }
}

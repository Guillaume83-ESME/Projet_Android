import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:swipezone/repositories/models/location.dart';
import 'location_detail_page.dart';
import 'map_page.dart';

class PlanningPage extends StatefulWidget {
  final String title;
  final List<Location> selectedLocations;

  const PlanningPage({
    Key? key,
    required this.title,
    required this.selectedLocations,
  }) : super(key: key);

  @override
  State<PlanningPage> createState() => _PlanningPageState();
}


class _PlanningPageState extends State<PlanningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: widget.selectedLocations.length,
        itemBuilder: (context, index) {
          final location = widget.selectedLocations[index];
          return ListTile(
            title: Text(location.nom),
            subtitle: Text(location.description ?? 'No description'),
            trailing: Text(
              '${location.localization.lat ?? 'N/A'}, ${location.localization.lng ?? 'N/A'}',
            ),
            onTap: () {
              // Naviguer vers la page de détails du lieu
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LocationDetailPage(location: location),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              Position userPosition = await Geolocator.getCurrentPosition();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(userPosition: userPosition, locations: widget.selectedLocations),
                ),
              );
            },
            tooltip: 'Créer le trajet',
            child: const Icon(Icons.directions),
          ),
        ],
      ),
    );
  }

}
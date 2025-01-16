import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:swipezone/repositories/models/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MapPage extends StatefulWidget {
  final Position userPosition;
  final List<Location> locations;

  const MapPage({Key? key, required this.userPosition, required this.locations}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    _addMarkers();
    _createPolylines();
  }

  void _addMarkers() {
    markers.add(Marker(
      markerId: MarkerId('user_location'),
      position: LatLng(widget.userPosition.latitude, widget.userPosition.longitude),
      infoWindow: InfoWindow(title: 'Votre position'),
    ));

    for (var location in widget.locations) {
      markers.add(Marker(
        markerId: MarkerId(location.nom),
        position: LatLng(location.localization.lat!, location.localization.lng!),
        infoWindow: InfoWindow(title: location.nom),
      ));
    }
  }

  void _createPolylines() async {
    // Ajoutez ici votre logique pour créer des polylignes entre les lieux
    // Par exemple, vous pouvez utiliser l'API Google Directions pour obtenir l'itinéraire
    // et tracer les polylines sur la carte.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trajet'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.userPosition.latitude, widget.userPosition.longitude),
          zoom: 12,
        ),
        markers: markers,
        polylines: polylines,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      ),
    );
  }
}

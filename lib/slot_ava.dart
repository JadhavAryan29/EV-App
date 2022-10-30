// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentlocation = LatLng(20.5937, 78.9629);

class SlotAvailable extends StatefulWidget {
  const SlotAvailable({Key? key}) : super(key: key);

  @override
  State<SlotAvailable> createState() => _SlotAvailableState();
}

class _SlotAvailableState extends State<SlotAvailable> {
  late GoogleMapController mapController;
  Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: currentlocation,
        ),
        onMapCreated: (controller) {
          mapController = controller;
          addMarker(
            "one",
            LatLng(19.9975, 73.7898),
          );
          addMarker(
            "three",
            LatLng(19.1136, 72.8697),
          );
          addMarker(
            "five",
            LatLng(18.5204, 73.8567),
          );
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) async{
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/charger.png');
    var marker = Marker(markerId: MarkerId(id), position: location,icon: markerIcon);
    _markers[id] = marker;
    setState(() {});
  }
}

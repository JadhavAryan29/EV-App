// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentlocation = LatLng(20.5937, 78.9629);

class SlotUnavailable extends StatefulWidget {
  const SlotUnavailable({Key? key}) : super(key: key);

  @override
  State<SlotUnavailable> createState() => _SlotUnavailableState();
}

class _SlotUnavailableState extends State<SlotUnavailable> {
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
            "two",
            LatLng(19.0338, 73.0196),
          );
          addMarker(
            "four",
            LatLng(19.2094, 73.0939),
          );
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/pin.png');
    var marker =
        Marker(markerId: MarkerId(id), position: location, icon: markerIcon);
    _markers[id] = marker;
    setState(() {});
  }
}

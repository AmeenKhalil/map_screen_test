import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mapmulti extends StatefulWidget {
  const mapmulti({super.key});

  @override
  State<mapmulti> createState() => _mapmultiState();
}

class _mapmultiState extends State<mapmulti> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Marker markerA = const Marker(
      markerId: MarkerId("MarkerA"),
      position: LatLng(37.42796133580664, -122.085749655962));
  Marker markerB = const Marker(
      markerId: MarkerId("MarkerB"),
      position: LatLng(37.43296265331129, -122.08832357078792));
  Marker markerc = const Marker(
      markerId: MarkerId("Markerc"),
      position: LatLng(37.42796133580664, -122.085749655742));
  Marker markerd = const Marker(
      markerId: MarkerId("Markerd"),
      position: LatLng(37.42796133580664, -122.085749655912));
  Marker markere = const Marker(
      markerId: MarkerId("Markere"),
      position: LatLng(37.42796133580664, -122.085749652962));
  Set<Marker> markers = <Marker>{};
  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  void initState() {
    markers.addAll([markerA, markerB]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: markers,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}

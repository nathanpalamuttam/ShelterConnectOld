import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
class ShelterRoute extends StatefulWidget {
    @override
  _ShelterRouteState createState() => _ShelterRouteState();
}

class _ShelterRouteState extends State<ShelterRoute> {

  GoogleMapController _controller;
  String searchAddr;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shelter Route"),
              ),
      body: Stack (
        children: <Widget>[
          GoogleMap(
            onMapCreated: onMapCreated,
            initialCameraPosition: CameraPosition(target: LatLng(40.6782, -73.9442), zoom: 14.0),
            mapType: MapType.normal,

            )
          ]),
      );

  }
  void onMapCreated(GoogleMapController controller){
    setState(() {
      _controller = controller;
    });
  }
}
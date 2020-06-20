import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  @override
  _GoogleMapsStateState createState() => _GoogleMapsStateState();
}

class _GoogleMapsStateState extends State<GoogleMaps> {
  GoogleMapController mapController;
  String searchAddress;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(40.7128, -74.0060),
              zoom: 10.0,
            ),
          ),
          Positioned(
            top: 30.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Address',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
                  suffix: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: searchAndNavigate,
                    iconSize: 30.0,
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    searchAddress = val;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  searchAndNavigate() {
    Geolocator().placemarkFromAddress(searchAddress).then((result) {
      mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(result[0].position.latitude, result[0].position.longitude), zoom: 15.0)));
    });
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}

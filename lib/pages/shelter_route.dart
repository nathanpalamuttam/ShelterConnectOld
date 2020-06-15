import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/box_text_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'google_maps_routes.dart';
class ShelterRoute extends StatefulWidget {
  @override
  _ShelterRouteState createState() => _ShelterRouteState();
}

class _ShelterRouteState extends State<ShelterRoute> {
  final LatLng _center = const LatLng(45.521563, -122.677433);
  Completer<GoogleMapController> _controller = Completer();

  String shelterName, description;
  LatLng location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shelter Route"),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'We\'re so excited to partner with you!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  BoxTextField(
                    onChanged: (val) {
                      setState(() {
                        shelterName = val;
                      });
                    },
                    maxLines: 1,
                    hintText: 'Shelter name',
                  ),
                  SizedBox(height: 5.0),
                  BoxTextField(
                    onChanged: (val) {
                      setState(() {
                        description = val;
                      });
                    },
                    maxLines: null,
                    hintText: 'Type in a short description of your shelter here. This will be displayed when volunteers want to donate to you.',
                  ),
                  SizedBox(height: 5.0),
                  BoxTextField(
                    onChanged: (val) {
                      setState(() {
                        location = val;
                      });
                    },
                    hintText: 'Location',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
          child: GoogleMaps(),
//            child: GoogleMap(
//              onMapCreated: (controller) {
//                _controller.complete(controller);
//              },
//              initialCameraPosition: CameraPosition(
//                target: _center,
//                zoom: 11.0,
//              ),
//              zoomControlsEnabled: false,

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          //TODO
        },
        label: Text('Next'),
      ),
    );
  }
}
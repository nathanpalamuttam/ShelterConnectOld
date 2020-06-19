import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'pages/google_maps_routes.dart';
class MapUtils {


  static Future<void> openMap(double latitude, double longitude) async {

    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}

class MapsRedirect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
         RaisedButton(
          onPressed: ()  async => await Geolocator().placemarkFromCoordinates(52.2165157, 6.9437819),
         )
        ),
      );
      }
}

searchandNavigate() {
  Future<void> openMap(double latitude, double longitude) async {
    Geolocator().placemarkFromAddress("Gronausestraat 710, Enschede").then((
        result) async {
      String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
      if (await canLaunch(googleUrl)) {
        await launch(googleUrl);
      } else {
        throw 'Could not open the map.';
      }
    });
  }
}


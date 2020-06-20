import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

import '../components/box_text_field.dart';

class ShelterRoute extends StatefulWidget {
  @override
  _ShelterRouteState createState() => _ShelterRouteState();
}

const kGoogleApiKey = 'AIzaSyDtBjj6ReiOlVtylupAx-wcLe2HmsJXXFs';
final homeScaffoldKey = GlobalKey<ScaffoldState>();
GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

class _ShelterRouteState extends State<ShelterRoute> {
  Mode _mode = Mode.overlay;
  String shelterName, description;

  void onError(PlacesAutocompleteResponse response) {
    homeScaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text(response.errorMessage)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shelter Route'),
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
                  FlatButton(
                    onPressed: _handlePressButton,
                    child: Text('Search places'),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      //TODO
                    },
                    label: Text('Next'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handlePressButton() async {
    Prediction p = await PlacesAutocomplete.show(
      context: context,
      apiKey: kGoogleApiKey,
      onError: onError,
      mode: _mode,
      language: "en",
      components: [Component(Component.country, "us")],
    );

    displayPrediction(p, homeScaffoldKey.currentState);
  }

  Future<Null> displayPrediction(Prediction p, ScaffoldState scaffold) async {
    if (p != null) {
      PlacesDetailsResponse detail = await _places.getDetailsByPlaceId(p.placeId);
      final lat = detail.result.geometry.location.lat;
      final lng = detail.result.geometry.location.lng;

      scaffold.showSnackBar(SnackBar(content: Text("${p.description} - $lat/$lng")));
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_map_place/search_map_place.dart';

import '../components/box_text_field.dart';

class ShelterRoute extends StatefulWidget {
  @override
  _ShelterRouteState createState() => _ShelterRouteState();
}

class _ShelterRouteState extends State<ShelterRoute> {
  String shelterName, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shelter Route'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                      hintText: 'Shelter name',
                      maxLines: 1,
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
                    SearchMapPlaceWidget(
                        apiKey: "AIzaSyDtBjj6ReiOlVtylupAx-wcLe2HmsJXXFs" // YOUR GOOGLE MAPS API KEY
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.pushNamed(context,'/create_shelter_account');
                      },
                      label: Text('Next'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

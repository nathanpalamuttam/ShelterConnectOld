import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/action_button.dart';
import '../components/route_info_popup.dart';
import '../constants.dart';

class RouteSelectionPage extends StatelessWidget {
  final _shelterInfoText =
      'This member status marks this account as the one and '
      'only account for a certain homeless shelter. This membership allows the '
      'account to request food donations as a shelter';
  final _volunteerInfoText = 'This member status marks this account as a'
      'volunteer who will have the ability to deliver foods from markets to'
      'shelters. You will get paid through this process.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sheltergreen,
      //Color(0xFF3ac74a),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 60.0, left: 10.0),
          child: Center(
              child: Text('ShelterConnect', style: TextStyle(fontSize: 30))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 32.0, left: 32.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 4),
              Stack(
                children: <Widget>[
                  ActionButton(
                    text: 'Shelter',
                    onPressed: () => Navigator.pushNamed(context, '/shelter'),
                  ),
                  Row(children: <Widget>[
                    Spacer(),
                    InfoButton(
                      title: 'Status: Shelter',
                      infoText: _shelterInfoText,
                      buttonText: 'Proceed as a Shelter',
                      buttonLocation: '/shelter',
                    ),
                  ]),
                ],
              ),
              Spacer(flex: 1),
              Stack(
                children: <Widget>[
                  ActionButton(
                    text: 'Volunteer',
                    onPressed: () => Navigator.pushNamed(context, '/volunteer'),
                  ),
                  Row(children: <Widget>[
                    Spacer(),
                    InfoButton(
                      title: 'Status: Volunteer',
                      infoText: _volunteerInfoText,
                      buttonText: 'Proceed as a Volunteer',
                      buttonLocation: '/volunteer',
                    ),
                  ]),
                ],
              ),
              Spacer(flex: 4),
            ]),
      ),
    );
  }
}

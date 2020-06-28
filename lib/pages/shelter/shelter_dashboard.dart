import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/models/user.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';
import 'navigation_tab.dart';

class ShelterDashboard extends StatefulWidget with NavigationTab {
  @override
  String get title => 'Dashboard';

  @override
  IconData get icon => Icons.home;

  @override
  _ShelterDashboardState createState() => _ShelterDashboardState();
}

class _ShelterDashboardState extends State<ShelterDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 320,
              width: 395,
              decoration: BoxDecoration(
                gradient: blueGradient,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20,
                  ),
                  child: Text(
                    getGreeting(Provider.of<User>(context, listen: false).name),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            Center(
              child: Card(
                child: Text('Pending Deliveries'),
                margin: const EdgeInsets.only(bottom: 6.0),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class PendingDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Color(0xFFA3DEEB),
        height: 50,
        width: 360,
        child: Row(
          children: <Widget>[
            Container(
              child: Text("12/12/2020 |"),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  " John Appleseed |",
                  textAlign: TextAlign.left,
                )),
            Container(
                child: Text(
              " Can of Beans" + "#" + "57124618",
              textAlign: TextAlign.center,
            ))
          ],
        ));
  }
}

class SeeMoreButton extends StatelessWidget {
  final String buttontext;

  SeeMoreButton(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 230, right: 15),
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shinsplint');
          },
          child: Text(buttontext),
          color: Colors.blueAccent,
          textColor: Colors.white),
    );
  }
}

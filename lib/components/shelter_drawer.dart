import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShelterDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Color(0xFFA3DEEB),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("shelterconnect20@gmail.com"),
                accountName: Text("ShelterConnect"),
                currentAccountPicture: CircleAvatar(
                  child: Text("SC"), // backgroundImage: NetworkImage(---------------)
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter_dashboard');
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.inbox),
                  title: Text('DashBoard'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter_pending_deliveries');
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.inbox),
                  title: Text('Pending Deliveries'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter_past_deliveries');
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.inbox),
                  title: Text('Past Deliveries'),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/shelter_requests');
                },
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.inbox),
                  title: Text('Requests'),
                ),
              ),
              Divider(),
              Expanded(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bruhdude');
                        },
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.cog),
                          title: Text('Settings'),
                        ),
                      )))
            ],
          ),
        )


    );
  }
}

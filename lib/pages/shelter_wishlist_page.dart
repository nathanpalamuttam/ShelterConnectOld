import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WishList Page"),
          backgroundColor: Colors.blue[600],
        ),
        drawer: Drawer(
            child: Container(
              color: Color(0xFFA3DEEB),
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountEmail: Text("shelterconnect20@gmail.com"),
                    accountName: Text("ShelterConnect"),
                    currentAccountPicture: CircleAvatar(
                      child: Text("SC"), // backgroundImage: NetworkImage(---------------)
                    ),),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shelter_home');
                    },
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.inbox),
                      title: Text('Deliveries'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shelter_wishlist');
                    },
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.inbox),
                      title: Text('WishList'),
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
                              leading:Icon(FontAwesomeIcons.cog),
                              title: Text('Settings'),
                            ),
                          )
                      )
                  )
                ],
              ),
            ),
        ),
      body: Container(
        child: Text('wassa'),
      )
    );
  }
}
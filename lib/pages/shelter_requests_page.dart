import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/shelter_drawer.dart';

class RequestsPage extends StatefulWidget {
  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WishList Page"),
          backgroundColor: Colors.blue[600],
        ),
        drawer: ShelterDrawer(),
      body: Container(
        child: Text('wassa'),
      )
    );
  }
}
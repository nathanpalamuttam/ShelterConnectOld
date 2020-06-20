import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shelterGreen,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(right: 60.0, left: 10.0),
          child: Center(
            child: Text(
              'Donate Now!',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 32.0, left: 32.0),
        child: Column(),
      ),
    );
  }
}

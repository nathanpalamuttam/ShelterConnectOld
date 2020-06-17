import 'package:flutter/material.dart';



class SettingButton extends StatelessWidget {

  final String route;

  SettingButton(this.route);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 335,
            right: 5
          ),
          child: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 25,
            color: Colors.white,
          onPressed: (){
            Navigator.pushNamed(context, route);
          },),
        );
  }
}
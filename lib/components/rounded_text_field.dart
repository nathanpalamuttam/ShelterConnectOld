import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final IconData icon;
  final Function onChanged;
  final bool obscureText;

  RoundedTextField({this.controller, this.labelText, this.icon, this.onChanged, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: defaultTextStyle,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.7),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          contentPadding: EdgeInsets.only(top: 14.0),
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white60)),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
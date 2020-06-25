import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  RoundedButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: onPressed,
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          text,
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
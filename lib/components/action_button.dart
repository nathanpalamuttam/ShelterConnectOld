import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  ActionButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue[50],
      splashColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: onPressed,
      child: Container(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 30, color: Colors.indigo),
            )
          )
        )
      )
    );
  }
}

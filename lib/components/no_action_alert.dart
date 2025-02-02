import 'package:flutter/material.dart';

class NoActionAlert extends StatelessWidget {
  final String title;

  NoActionAlert({@required this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      actions: [
        FlatButton(
          child: Text(
            'OK',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

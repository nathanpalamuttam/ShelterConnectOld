import 'package:flutter/material.dart';

class BoxTextField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final int maxLines;
  final Color colors;

  final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0.0),
    borderSide: BorderSide(color: Colors.grey[300]),
  );

  BoxTextField({this.onChanged, this.hintText, this.maxLines = 1, this.colors, Color fillColor, InputDecoration decoration});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(5.0), borderSide: BorderSide(color: Colors.grey, width: 1)),
          focusedBorder: _border,
          hintText: hintText,
          hintMaxLines: 100,
        ),
        keyboardType: TextInputType.text,
        onChanged: onChanged,
        maxLines: maxLines,
      );
  }
}

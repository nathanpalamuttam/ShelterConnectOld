import 'package:flutter/material.dart';

class BoxTextField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final int maxLines;

  final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(0.0),
    borderSide: BorderSide(color: Colors.grey[300]),
  );

  BoxTextField({this.onChanged, this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        fillColor: Colors.grey[300],
        filled: true,
        enabledBorder: _border,
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

import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

//TODO: Consolidate components

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
        labelStyle: TextStyle(
          color: Colors.white60
        )
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}

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

class RoundImageButton extends StatelessWidget {
  final ImageProvider image;
  final Function onPressed;

  RoundImageButton({this.image, this.onPressed});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: RaisedButton(
        color: Colors.white,
        splashColor: Colors.grey,
        shape: CircleBorder(),
        highlightElevation: 0,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image(
            image: image,
            height: 44.0
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Direct to Sign Up Page'),
        padding: EdgeInsets.only(right: 26, left: 4),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an Account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]
          ),
        ),
      )
    );
  }
}
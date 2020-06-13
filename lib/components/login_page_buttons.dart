import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/constants.dart';

//TODO: Consolidate components

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Function onChanged;
  final bool obscureText;

  RoundedTextField({this.hintText, this.icon, this.onChanged, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
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
            labelText: hintText,
            labelStyle: TextStyle(
              color: Colors.white60
            )
          ),
          onChanged: onChanged,
          obscureText: obscureText,
        ),
      ]
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
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class AccountName extends StatelessWidget {

  final String buttontext;

  AccountName(this.buttontext);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
                buttontext,
                style: defaultTextStyle
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: defaultTextStyle,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(15),
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[600]),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: 'Enter your preferred Name',
                  hintStyle: TextStyle(
                      color: Colors.white60
                  )
                //hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ]);
  }
}

class ReenterPassword extends StatelessWidget {
  final String buttontext;

  ReenterPassword(this.buttontext);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
                buttontext,
                style: defaultTextStyle,
            ),
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              style: defaultTextStyle,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(15),
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[600]),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  contentPadding: EdgeInsets.only(top: 14.0),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintText: 'Re-enter Password',
                  hintStyle: TextStyle(
                      color: Colors.white60
                  )
                //hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ]);

  }
}

class SignInWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign up with',
          style: defaultTextStyle,
        ),
      ],
    );
  }
}

class GoogleLogin extends StatelessWidget {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 120),
      child: RaisedButton(
        color: Colors.white,
        splashColor: Colors.grey,
        onPressed: () {},
        shape: new CircleBorder(
        ),
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("assets/google_logo.png"), height: 44.0),
            ],
          ),
        ),
      ),
    );
  }
}

class FacebookLogin extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 120),
      child: RaisedButton(
        color: Colors.white,
        splashColor: Colors.grey,
        onPressed: () {},
        shape: new CircleBorder(
        ),
        highlightElevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("assets/facebooklogo2.png"), height: 44.0),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginRow extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GoogleLogin(),
          FacebookLogin(),
        ],
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
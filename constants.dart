import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/sign_in.dart';

class PurpleButton extends StatelessWidget {
  final String buttontext;

  final String buttonaction;

  PurpleButton(this.buttontext, this.buttonaction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.pushNamed(context, buttonaction);
      },
      color: Colors.deepPurple,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          buttontext,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
  }
}

class GreenButton extends StatelessWidget {
  final String buttontext;

  final String buttonaction;

  GreenButton(this.buttontext, this.buttonaction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {
          Navigator.pushNamed(context, buttonaction);
        },
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 600,
              maxHeight: 150,
            ),
            child: Container(
            
              color: Colors.greenAccent,
              // child: Padding(padding: const EdgeInsets.all(8.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(borderRadius: BorderRadius.circular(15)),
                        Text(
                          buttontext,
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(fontSize: 30)),
                        ),
                      ],
                    ),
                  )),
            )));
  }
}

class BlueButton extends StatelessWidget {
  final String buttontext;

  final String buttonaction;

  BlueButton(this.buttontext, this.buttonaction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            color: Colors.blue[50],
            splashColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
        onPressed: () {
              Navigator.pushNamed(context, buttonaction);
              },
              child: Container(
                color: Colors.blue[50],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          buttontext,
                          style: TextStyle(fontSize: 30, color: Colors.indigo),
          ),])         
    ))));
  }
}
class SigninButton extends StatelessWidget{
  final String buttontext;

  final String buttonaction;

  SigninButton(this.buttontext, this.buttonaction);
Widget build(BuildContext context) {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.pushNamed(context, buttonaction);
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                buttontext,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
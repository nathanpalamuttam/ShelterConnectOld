import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailText extends StatelessWidget {
  final String buttontext;

  EmailText(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              buttontext,
              style: TextStyle(
                color: Colors.white,
              )
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
              style: TextStyle(color: Colors.white),
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
                hintText: 'Enter your Email',
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

class PasswordText extends StatelessWidget {
  final String buttontext;

  PasswordText(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              buttontext,
              style: TextStyle(
                color: Colors.white
              )
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
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[600]),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                hintText: 'Enter your Password',
                hintStyle: TextStyle(
                  color: Colors.white60
                //hintStyle: kHintTextStyle,
              ),
            ),
          ),
    )]);
  }
}

class ForgotPassword extends StatelessWidget {
  final String buttontext;

  //final String buttonaction;

  ForgotPassword(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          buttontext,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold
          ),
          //style: kLabelStyle,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String buttontext;

  //final String buttonaction;

  LoginButton(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          buttontext,
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
          style: TextStyle(
            color: Colors.white
          ),
           //style: kLabelStyle,
        ),
      ],
    );
  }
}

class GoogleLogin extends StatelessWidget {
  // final String buttonaction;

  // GoogleLogin( this.buttonaction);
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
  // final String buttonaction;

  // GoogleLogin( this.buttonaction);
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
            text: TextSpan(children: [
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
              //style: kLabelStyle,
            ]),
          ),
        ));
  }
}        

class Rememberme extends StatefulWidget {
  @override
  _RemembermeState createState() => _RemembermeState();
}

class _RemembermeState extends State<Rememberme> {
bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                            value: checkBoxValue,
                            checkColor: Colors.blue,
                            activeColor: Colors.white,
                            onChanged: (bool value) {
                              print(value);
                              setState((){
                                checkBoxValue = value;
                                });
                            },
                          ),
                          Text("Remember Me", 
                          style: TextStyle(
                            color: Colors.white
                          ),
                    )])
                    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_app/components/login_page_buttons.dart';
import 'package:flutter_app/constants.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String name, email, password, reEnteredPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: blueGradient,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Create account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                RoundedTextField(
                  labelText: 'Preferred Name',
                  icon: Icons.person,
                  onChanged: (val) {
                    name = val;
                  }
                ),
                SizedBox(height: 20.0),
                RoundedTextField(
                  labelText: 'Email',
                  icon: Icons.email,
                  onChanged: (val) {
                    email = val;
                  },
                ),
                SizedBox(height: 20.0),
                RoundedTextField(
                  labelText: 'Password',
                  icon: Icons.lock,
                  onChanged: (val) {
                    password = val;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 20.0),
                RoundedTextField(
                  labelText: 'Re-enter Password',
                  icon: Icons.lock,
                  onChanged: (val) {
                    reEnteredPassword = val;
                  },
                  obscureText: true,
                ),
                RoundedButton(
                  text: 'CREATE ACCOUNT',
                  onPressed: () async {
                    if (password != reEnteredPassword) {
                      //TODO
                    }
                    else {
                      //TODO
                    }
                  }
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
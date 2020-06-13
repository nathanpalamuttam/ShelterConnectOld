import 'package:flutter/material.dart';
import 'package:flutter_app/components/login_page_buttons.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/constants.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: blueGradient,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 150.0,
                        ),
                        child: Column(
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
                              AccountName('Name'),
                              EmailText('Email'),
                              PasswordText('Password'),
                              ReenterPassword('Re-enter Password'),
                              SizedBox(height: 1),
                              SizedBox(height: 1),
                              RoundedButton('CREATE ACCOUNT', ''),

                            ]),
                      ),
                    ),
                  ]))),
    );
  }
}
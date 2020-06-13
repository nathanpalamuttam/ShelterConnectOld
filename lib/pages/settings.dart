import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/sign_in.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              'Settings',
              style: defaultTextStyle,
            ),
            backgroundColor: Color(0xFF3B96FF),
          ),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Stack(children: <Widget>[
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: blueGradient,
                    ),
                  ),
                  Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 40, left: 15),
                                //   // child: CircleAvatar(
                                //   //   backgroundImage: NetworkImage(
                                //   //     imageUrl,
                                //   //   ),
                                //     radius: 25,
                                //     backgroundColor: Colors.transparent,
                                //   ),
                                // ),
                                
                                Padding(
                                  padding: const EdgeInsets.only(top: 35, left: 10),
                                  child: 
                                  Text(
                                    '$name',
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 100, right: 77 ),
                                  child: Text(
                                    'View Profile',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                ),
                                // SizedBox(height: 40, width: 30),
                                // Center(child: Text(
                                //   'You are logged in with $email',
                                //   style: TextStyle(
                                //       fontSize: 15,
                                //       color: Colors.white,
                                //       fontWeight: FontWeight.bold),
                              ]),
                  Center(
                    child: RaisedButton(
                      onPressed: () {
                        signOutGoogle();
                        Navigator.pushNamed(context, '/first');
                      },
                      color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Out',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                  ),
                ]))));
  }
}
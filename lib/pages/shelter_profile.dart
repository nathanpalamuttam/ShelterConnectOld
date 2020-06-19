import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShelterProfile extends StatefulWidget {
  @override
  _ShelterProfileState createState() => _ShelterProfileState();
}

class _ShelterProfileState extends State<ShelterProfile> {

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
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF3B96FF),
                              Color(0xFF2E8FFF),
                              Color(0xFF1672DB),
                              Color(0xFF025BC2),
                              // Color(0xFF73AEF5),
                              // Color(0xFF61A4F1),
                              // Color(0xFF478DE0),
                              // Color(0xFF398AE5),
                            ],
                            stops: [0.1, 0.4, 0.7, 0.9],
                          ),
                        ),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40.0,
                            vertical: 200.0,
                          ),
                          child: Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text('Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ])
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './ShelterRoute.dart';
import './VolunteerRoute.dart';
import 'login_page.dart';

// void main() => runApp(MyApp());
void main() {
  runApp(MaterialApp(
    title: 'My App',
    home: LoginPage(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('ShelterConnect',
                style:
                    GoogleFonts.droidSans(textStyle: TextStyle(fontSize: 30))),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 300,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text(
                      'Shelter',
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 30)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShelterRoute()),
                      );
                    },
                  ),
                ),
              ),
              Center(
                child: (ButtonTheme(
                    minWidth: 300,
                    height: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: RaisedButton(
                            color: Colors.greenAccent,
                            child: Text(
                              'Volunteer',
                              style: GoogleFonts.roboto(
                                  textStyle: TextStyle(fontSize: 30)),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VolunteerRoute()),
                              );
                            })))),
              )
            ]));
  }
}

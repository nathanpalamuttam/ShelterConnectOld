import 'package:flutter/material.dart';
import './first_screen.dart';
import './shelter_route.dart';
import './usersetup.dart';
import './volunteer_route.dart';
import './login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/first',
      routes: {
        '/first': (context) => LoginPage(),
        // This is the route and It is good.
        '/second': (context) => FirstScreen(),
        '/third': (context) => TwoButtons(),
        '/fourth': (context) => VolunteerRoute(),
        '/fifth': (context) => ShelterRoute(),
      },
    );
  }
}



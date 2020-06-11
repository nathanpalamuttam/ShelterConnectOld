import 'package:flutter/material.dart';
import 'pages/profile_page.dart';
import 'pages/shelter_route.dart';
import 'pages/route_selection_page.dart';
import 'pages/volunteer_route.dart';
import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/profile': (context) => ProfilePage(),
        '/route_selection': (context) => RouteSelectionPage(),
        '/volunteer': (context) => VolunteerRoute(),
        '/shelter': (context) => ShelterRoute(),

      },
    );
  }
}



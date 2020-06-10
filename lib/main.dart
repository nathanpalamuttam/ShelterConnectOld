import 'package:flutter/material.dart';
import 'pages/first_screen.dart';
import 'pages/shelter_route.dart';
import 'pages/route_selection_page.dart';
import 'pages/volunteer_route.dart';
import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        // This is the route and It is good.
        '/second': (context) => FirstScreen(),
        '/route_selection': (context) => RouteSelectionPage(),
        '/volunteer': (context) => VolunteerRoute(),
        '/shelter': (context) => ShelterRoute(),
      },
    );
  }
}



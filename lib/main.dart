import 'package:flutter/material.dart';

import 'pages/create_account_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/profile_page.dart';
import 'pages/route_selection_page.dart';
import 'pages/settings.dart';
import 'pages/shelter_route.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_screen.dart';
import 'pages/volunteer_route.dart';
import 'pages/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome_page',
      routes: {
        '/login': (context) => LoginPage(),
        '/profile': (context) => ProfilePage(),
        '/route_selection': (context) => RouteSelectionPage(),
        '/volunteer': (context) => VolunteerRoute(),
        '/shelter': (context) => ShelterRoute(),
        '/signup': (context) => SignUpPage(),
        '/create_account': (context) => Account(),
        '/home_page': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
        '/splash_screen': (context) => SplashScreen(),
        '/welcome_page': (context) => WelcomePage(),
      },
    );
  }
}



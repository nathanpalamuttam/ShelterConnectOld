import 'package:flutter/material.dart';
import 'package:flutter_app/pages/create_account_page.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/pages/settings.dart';
import 'package:flutter_app/pages/signin_or_login_page.dart';
import 'package:flutter_app/pages/signin_page.dart';
import 'package:flutter_app/pages/splash_screen.dart';
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
      initialRoute: '/login_or_signin_page',
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
        '/login_or_signin_page': (context) => LoginorSignin(),
        


      },
    );
  }
}



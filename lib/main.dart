import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'pages/volunteer_signup_page.dart';
import 'pages/shelter_signup_page.dart';
import 'pages/google_maps_routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/route_selection_page.dart';
import 'pages/request_order_page.dart';
import 'pages/settings.dart';
import 'pages/shelter/shelter_navigation_page.dart';
import 'pages/shelter/shelter_profile.dart';
import 'pages/shelter/shelter_route.dart';
import 'pages/signup_page.dart';
import 'pages/volunteer_confirmation_page.dart';
import 'pages/volunteer_home_page.dart';
import 'pages/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<User>(
      create: (context) => User(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/shelter_navigation',
        routes: {
          '/volunteer_signup': (_) => VolunteerSignupPage(),
          '/shelter_signup': (_) => ShelterSignupPage(),
          '/google_maps_routes': (_) => GoogleMaps(),
          '/home': (_) => HomePage(),
          '/login': (_) => LoginPage(),
          '/order': (_) => OrderPage(),
          '/route_selection': (_) => RouteSelectionPage(),
          '/settings': (_) => SettingsPage(),
          '/shelter': (_) => ShelterRoute(),
          '/shelter_profile': (_) => ShelterProfile(),
          '/shelter_navigation': (_) => ShelterNavigationPage(),
          '/signup': (_) => SignupPage(),
          '/volunteer_confirmation': (_) => VolunteerConfirmation(),
          '/volunteer_home': (_) => VolunteerHomePage(),
          '/welcome': (_) => WelcomePage(),
        },
      ),
    );
  }
}

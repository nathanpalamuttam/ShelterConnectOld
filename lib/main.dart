import 'package:flutter/material.dart';
import 'package:flutter_app/pages/shelter_past_delivery_page.dart';
import 'package:flutter_app/pages/shelter_pending_delivery_page.dart';
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
import 'pages/shelter_profile.dart';
import 'pages/shelter_route.dart';
import 'pages/shelter_requests_page.dart';
import 'pages/signup_page.dart';
import 'pages/volunteer_confirmation_page.dart';
import 'pages/volunteer_home_page.dart';
import 'pages/welcome_page.dart';
import 'pages/shelter_dashboard.dart';

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
        initialRoute: '/welcome',
        routes: {
          '/volunteer_signup': (context) => VolunteerSignupPage(),
          '/shelter_signup': (context) => ShelterSignupPage(),
          '/google_maps_routes': (context) => GoogleMaps(),
          '/home': (context) => HomePage(),
          '/login': (context) => LoginPage(),
          '/order': (context) => OrderPage(),
          '/route_selection': (context) => RouteSelectionPage(),
          '/settings': (context) => SettingsPage(),
          '/shelter': (context) => ShelterRoute(),
          '/shelter_profile': (context) => ShelterProfile(),
          '/shelter_dashboard': (context) => ShelterDashBoard(),
          '/shelter_past_deliveries': (context) => PastDeliveryPage(),
          '/shelter_pending_deliveries': (context) => PendingDeliveryPage(),
          '/shelter_requests': (context) => RequestsPage(),
          '/signup': (context) => SignupPage(),
          '/volunteer_confirmation': (context) => VolunteerConfirmation(),
          '/volunteer_home': (context) => VolunteerHomePage(),
          '/welcome': (context) => WelcomePage(),

        },
      ),
    );
  }
}

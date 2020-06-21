import 'package:flutter/material.dart';
import 'package:flutter_app/components/google_autocomplete.dart';
import 'package:flutter_app/pages/phone_authentication_page.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'pages/create_user_account_page.dart';
import 'pages/create_shelter_account_page.dart';
import 'pages/donate_page.dart';
import 'pages/google_maps_routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/route_selection_page.dart';
import 'pages/settings.dart';
import 'pages/shelter_profile.dart';
import 'pages/shelter_route.dart';
import 'pages/sign_up_page.dart';
import 'pages/volunteer_home_page.dart';
import 'pages/welcome_page.dart';
import 'components/phone_authentication.dart';

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
        routes: { // TODO: Alphabetize
          '/create_user_account': (context) => Account(),
          '/create_shelter_account': (context) => ShelterAccount(),
          '/donate': (context) => DonatePage(),
          '/google_maps_routes': (context) => GoogleMaps(),
          '/google_autocomplete': (context) => RoutesWidget(),
          '/home': (context) => HomePage(),
          '/login': (context) => LoginPage(),
          '/phone_auth': (context) => AuthService().handleAuth(),
          '/phone_auth_page': (context) => PhoneAuthPage(),
          '/route_selection': (context) => RouteSelectionPage(),
          '/settings': (context) => SettingsPage(),
          '/shelter': (context) => ShelterRoute(),
          '/shelter_profile': (context) => ShelterProfile(),
          '/signup': (context) => SignUpPage(),
          '/volunteer_home': (context) => VolunteerHomePage(),
          '/welcome': (context) => WelcomePage(),

        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user.dart';
import 'pages/create_account_page.dart';
import 'pages/donate_page.dart';
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
import 'pages/google_maps_routes.dart';
import './maps_redirect.dart';
import 'googleautocomplete.dart';
void main() {
//  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}


import 'pages/shelter_profile.dart';
import 'pages/volunteer_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


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
    initialRoute: '/welcome_page',
    routes: {
    '/login': (context) => LoginPage(),
    '/profile': (context) => ProfilePage(),
    '/route_selection': (context) => RouteSelectionPage(),
    '/volunteer': (context) => VolunteerRoute(),
    '/shelter': (context) => ShelterRoute(),
    '/signup': (context) => SignUpPage(),
    '/create_account': (context) => Account(),
    '/home': (context) => HomePage(),
    '/settings': (context) => SettingsPage(),
    '/splash_screen': (context) => SplashScreen(),
    '/welcome_page': (context) => WelcomePage(),
    '/google_maps_routes': (context) => GoogleMaps(),
    '/donate': (context) => DonatePage(),
    '/volunteer_home': (context) => VolunteerHomePage(),
    '/shelter_profile': (context) => ShelterProfile(),
    '/maps_redirect_util': (context) => MapsRedirect(),
    '/googleautocomplete': (context) => RoutesWidget(),
    },
    ),
    );
    }
    }



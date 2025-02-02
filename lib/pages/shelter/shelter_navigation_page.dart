import 'package:flutter/material.dart';

import 'navigation_tab.dart';
import 'shelter_dashboard.dart';
import 'shelter_past_delivery_page.dart';
import 'shelter_pending_delivery_page.dart';
import 'shelter_requests_page.dart';

class ShelterNavigationPage extends StatefulWidget {
  @override
  _ShelterNavigationPageState createState() => _ShelterNavigationPageState();
}

class _ShelterNavigationPageState extends State<ShelterNavigationPage> {
  int _selectedIndex = 0;
  final List<NavigationTab> _pages = [
    ShelterDashboard(),
    PendingDeliveryPage(),
    PastDeliveryPage(),
    RequestsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDAE1EC),
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black,),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("shelterconnect20@gmail.com"),
                accountName: Text("ShelterConnect"),
                currentAccountPicture: CircleAvatar(
                  child: Text("SC"),
                ),
              ),

              ..._pages.asMap().map((index, tab) => MapEntry(index, ListTile(
                title: Text(tab.title),
                leading: Icon(tab.icon),
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                  Navigator.pop(context);
                }
              ))).values.toList(),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

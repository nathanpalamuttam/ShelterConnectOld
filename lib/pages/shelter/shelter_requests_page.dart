import 'package:flutter/material.dart';

import 'navigation_tab.dart';

class RequestsPage extends StatefulWidget with NavigationTab {
  @override
  IconData get icon => Icons.list;

  @override
  String get title => 'Donation Requests';

  @override
  _RequestsPageState createState() => _RequestsPageState();
}

class _RequestsPageState extends State<RequestsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('wassa'),
    );
  }
}

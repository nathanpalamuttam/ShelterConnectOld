import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';
import '../../models/user.dart';
import 'navigation_tab.dart';

class ShelterDashboard extends StatefulWidget with NavigationTab {
  @override
  String get title => 'Dashboard';

  @override
  IconData get icon => Icons.home;

  @override
  _ShelterDashboardState createState() => _ShelterDashboardState();
}

class _ShelterDashboardState extends State<ShelterDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDAE1EC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GreetingsInfo(),
              SizedBox(
                height: 40,
              ),
              DashboardButton1('Pending Deliveries'),
              SizedBox(
                height: 20,
              ),
              DashboardButton2('Requests'),
              SizedBox(
                height: 20,
              ),
              DashboardButton3('Past Deliveries'),
            ],
          ),
        ),
      ),
    );
  }
}

class PendingDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Color(0xFFA3DEEB),
        height: 50,
        width: 360,
        child: Row(
          children: <Widget>[
            Container(
              child: Text("12/12/2020 |"),
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  " John Appleseed |",
                  textAlign: TextAlign.left,
                )),
            Container(
                child: Text(
              " Can of Beans" + "#" + "57124618",
              textAlign: TextAlign.center,
            ))
          ],
        ));
  }
}

class SeeMoreButton extends StatelessWidget {
  final String buttontext;

  SeeMoreButton(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 230, right: 15),
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/shinsplint');
          },
          child: Text(buttontext),
          color: Colors.blueAccent,
          textColor: Colors.white),
    );
  }
}

class DashboardButton1 extends StatelessWidget {
  final String title;

  DashboardButton1(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: TextStyle(
            fontSize: 20,
          )),
      height: 170,
      width: MediaQuery.of(context).size.width - 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5)), boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 2.5,
          blurRadius: 2.5,
        )
      ]),
    );
  }
}

class DashboardButton2 extends StatelessWidget {
  final String title;

  DashboardButton2(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: TextStyle(
            fontSize: 20,
          )),
      height: 170,
      width: MediaQuery.of(context).size.width - 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5)), boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 2.5,
          blurRadius: 2.5,
        )
      ]),
    );
  }
}

class DashboardButton3 extends StatelessWidget {
  final String title;

  DashboardButton3(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: TextStyle(
            fontSize: 20,
          )),
      height: 170,
      width: MediaQuery.of(context).size.width - 40,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(5)), boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 2.5,
          blurRadius: 2.5,
        )
      ]),
    );
  }
}

class GreetingsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      getGreeting(Provider.of<User>(context, listen: false).name),
      style: TextStyle(
        color: Colors.black,
        fontSize: 26.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

//Padding(
//padding: const EdgeInsets.all(30.0),
//child: ClipRRect(
//borderRadius: BorderRadius.circular(5.0),
//child: Container(
//child: Text('Pending Deliveries'),
//height: 100.0,
//width: 400,
//margin: const EdgeInsets.only(bottom: 6.0),
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(5.0),
//color: Colors.white,
//boxShadow: [
//BoxShadow(
//color: Colors.grey,
//offset: Offset(0.0, 1.0),
//blurRadius: 6.0,
//),
//],
//),
//),
//),
//),

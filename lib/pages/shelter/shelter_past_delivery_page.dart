import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_tab.dart';

class PastDeliveryPage extends StatefulWidget with NavigationTab {
  @override
  String get title => 'Past Deliveries';

  @override
  IconData get icon => Icons.inbox;

  @override
  _PastDeliveryPageState createState() => _PastDeliveryPageState();
}

class _PastDeliveryPageState extends State<PastDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 20,
            ),
            child: Text(
              'Past Deliveries',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          alignment: Alignment.topLeft,
          color: Colors.white,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 20,
            ),
            child: Text(
              'Completion Date          Name of Volunteer         Name of Item + Item Number',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          alignment: Alignment.topLeft,
          color: Colors.white,
        ),
        PendingDelivery(),
        SizedBox(
          height: 10,
        ),
        PendingDelivery(),
        SizedBox(
          height: 10,
        ),
        PendingDelivery(),
        SizedBox(
          height: 10,
        ),
        SeeMoreButton('See All Past Deliveries'),
      ],
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

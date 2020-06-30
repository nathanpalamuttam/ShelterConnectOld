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
    return Scaffold(
      backgroundColor: Color(0xFFDAE1EC),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            PageTitle(),
            SizedBox(
              height: 15,
            ),
            RequestButtonRow(),
            SizedBox(height: 10,),
            RequestContainer('           requests       '),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 65,
          width: 65,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              onPressed: () { Navigator.pushNamed(context, '/shelter_create_requests'); },
              child: Icon(Icons.add, color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}

class RequestContainer extends StatelessWidget {
  final String title;

  RequestContainer(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Text(title,
                style: TextStyle(
                  fontSize: 20,
                )),
            height: 2000,
            width: 400,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2.5,
                blurRadius: 2.5,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
          child: Text(
            'Donation Requests',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );
  }
}

class RequestButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Text("Sort by", style: TextStyle(fontSize: 17, color: Colors.black),),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blueAccent,
                  size: 27,),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Text("Filters(#)", style: TextStyle(fontSize: 17, color: Colors.black),),
                Icon(
                  Icons.filter_list,
                  color: Colors.blueAccent,
                  size: 27,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

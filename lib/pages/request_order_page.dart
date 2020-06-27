import 'package:flutter/material.dart';


class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Requests from (ShelterName)"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text("Requests"),),
            ListTile(
              title: Text("Previous Orders"),
            ),
            ListTile(
              title: Text("Pending Deliveries"),
            ),
            ListTile(
              title: Text("Reputation"),
            ),
            ListTile(
              title: Text("hello"),
            ),
          ],
        )
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 70.0,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Requests',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                BoxRow(),
                BoxRow(),
                BoxRow(),
                BoxRow(),
                BoxRow(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/order');
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Donate and Deliver'),
        ),
      ),
    );
  }
}
class BoxRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RequestBox(),
        RequestBox(),
      ],
    );
  }
}


class RequestBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0))
        ),
        width: 192,
        height: 150,
        child: Row(
          children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset("assets/shelterimage.png",
          height: 150,
          width: 150,
          ),
          ),
        ),],
        ),
      ),
    );
  }
}


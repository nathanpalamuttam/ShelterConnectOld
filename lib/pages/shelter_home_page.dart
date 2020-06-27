import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShelterHomePage extends StatefulWidget {
  @override
  _ShelterHomePageState createState() => _ShelterHomePageState();
}

class _ShelterHomePageState extends State<ShelterHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Shelter Home Page"),
          backgroundColor: Colors.blue[600],
        ),
        drawer: Drawer(

            child: Container(
              color: Color(0xFFA3DEEB),
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                      accountEmail: Text("shelterconnect20@gmail.com"),
                      accountName: Text("ShelterConnect"),
                      currentAccountPicture: CircleAvatar(
                        child: Text("SC"), // backgroundImage: NetworkImage(---------------)
                      ),),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shelter_home');
                    },
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.inbox),
                      title: Text('Deliveries'),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/shelter_wishlist');
                    },
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.inbox),
                      title: Text('WishList'),
                    ),
                  ),
                  Divider(),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/bruhdude');
                        },
                        child: ListTile(
                          leading:Icon(FontAwesomeIcons.cog),
                          title: Text('Settings'),
                        ),
                      )
                    )
                  )
                ],
              ),
            )),
        body: Column(children: <Widget>[
          Column(

            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20,
                  ),
                  child: Text(
                    'Pending Deliveries',
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
                    'Assigned Date          Name of Volunteer         Name of Item + Item Number',
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
              SeeMoreButton('See all Pending Deliveries'),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
              height:1.0,
              width:400.0,
              color:Colors.black,),),
          SizedBox(height: 10),
          Column(
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
          ),
        ]));
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

          onPressed: ()
      {
        Navigator.pushNamed(context, '/shinsplint');
      }, child: Text(buttontext),
      color: Colors.blueAccent,
      textColor: Colors.white),
    );
  }
}


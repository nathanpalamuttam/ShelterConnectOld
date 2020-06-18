import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/action_button.dart';
import '../constants.dart';
import '../models/user.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  //TODO: User image?
//                  backgroundImage: NetworkImage(
//                    imageUrl,
//                  ),
                  radius: 60,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 40),
                Text(
                  getGreeting(Provider.of<User>(context, listen: false).name),
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 40, width: 30),
                Center(child: Text(
                  'You are logged in with ${Provider.of<User>(context, listen: false).email}',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 40),
                ActionButton(
                  text: 'Set Up User Type',
                  onPressed: () => Navigator.pushNamed(context, '/route_selection')
                ),

                SizedBox(height: 40),
                
                RaisedButton(
                  onPressed: () {
                    auth.signOut();
                  },
                  color: Colors.deepPurple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String getGreeting(String name) {
  var hour = new DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning, $name';
  }
  if (hour < 17) {
    return 'Good Afternoon, $name';
  }
  return 'Good Evening, $name';
}
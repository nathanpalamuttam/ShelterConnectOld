import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/sign_in.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextStyle whiteText = TextStyle(
    color: Colors.white,
  );
  final TextStyle greyTExt = TextStyle(
    color: Colors.grey.shade400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          centerTitle: true,
          title: Text(
            'Settings',
          ),
          backgroundColor: Color(0xFF3B96FF),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(right: 32, left: 20, top: 15),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://www.guidedogs.org/wp-content/uploads/2019/11/website-donate-mobile.jpg'),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(color: Colors.white,width: 2.0,),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('$name', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),
                          Text("San Jose",style: TextStyle(
                            color: Colors.grey.shade400,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  title: Text("Order Details", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
                  subtitle: Text("",style: greyTExt,),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey.shade400,),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Profile Settings", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  subtitle: Text("Rick Yanashita",style: greyTExt,),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey.shade400,),
                  onTap: (){},
                ),
                ListTile(
                  title: Text("App Preferences", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  subtitle: Text("",style: greyTExt,),
                  trailing: Icon(Icons.keyboard_arrow_right,color: Colors.grey.shade400,),
                  onTap: (){},
                ),
                SwitchListTile(
                  title: Text("Email Updates", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  subtitle: Text("On",style: greyTExt,),
                  value: true,
                  onChanged: (val){},
                ),
                SwitchListTile(
                  title: Text("Push Notifications", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                  subtitle: Text("Off",style: greyTExt,),
                  value: false,
                  onChanged: (val){},
                ),
                ListTile(
                  title: Text("Logout"),
                  onTap: () {

                  },
    )])))));
  }
}


//onPressed: () {
//signOutGoogle();
//Navigator.pushNamed(context, '/first');

// SizedBox(height: 40, width: 30),
// Center(child: Text(
//   'You are logged in with $email',
//   style: TextStyle(
//       fontSize: 15,
//       color: Colors.white,
//       fontWeight: FontWeight.{
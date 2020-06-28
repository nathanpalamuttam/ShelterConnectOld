import 'package:flutter/material.dart';

Widget _buildProfileWidget(String text) {
  return Container(
    color: Colors.white,
    child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
  );
}

class ShelterProfile extends StatefulWidget {
  @override
  _ShelterProfileState createState() => _ShelterProfileState();
}

class _ShelterProfileState extends State<ShelterProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                'assets/shelterimage.png',
                fit: BoxFit.fill,
              ))),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 20),
              _buildProfileWidget(
                'United States Mission Transitional Housing San Jose',
              ),
              SizedBox(height: 60),
              _buildProfileWidget(
                'This is where the info/short introduction and specific needs may be, and the quick brown v=fos shuafhskkhfai',
              ),
              SizedBox(height: 20),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
              SizedBox(height: 40),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
              SizedBox(height: 10),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
              SizedBox(height: 100),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
              SizedBox(height: 200),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
              SizedBox(height: 60),
              _buildProfileWidget(
                'Provided Address would go here',
              ),
            ]),
          )
        ],
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
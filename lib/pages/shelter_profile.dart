import 'package:flutter/material.dart';



Widget _buildProfileWidget(String text){
  return Container(
    color: Colors.white,
    child: Align(
      alignment: Alignment.topLeft,
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: 20),
      )
    ),
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
            background: Image.asset('assets/shelterimage.png',
              fit: BoxFit.fill,
            ))
              ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(height: 20),
              _buildProfileWidget('United States Mission Transitional Housing San Jose', ),
              SizedBox(height: 60),
              _buildProfileWidget('This is where the info/short introduction and specific needs may be, and the quick brown v=fos shuafhskkhfai', ),
              SizedBox(height: 20),
              _buildProfileWidget('Provided Address would go here', ),
              SizedBox(height: 40),
              _buildProfileWidget('Provided Address would go here', ),
              SizedBox(height: 10),
              _buildProfileWidget('Provided Address would go here', ),
              SizedBox(height: 100),
              _buildProfileWidget('Provided Address would go here', ),
              SizedBox(height: 200),
              _buildProfileWidget('Provided Address would go here', ),
              SizedBox(height: 60),
              _buildProfileWidget('Provided Address would go here', ),
            ]),

          )
        ],
      )
    );
  }
}


//Scaffold(
//body: Stack(
//children: <Widget>[
//Container(
//height: double.infinity,
//width: double.infinity,
//decoration: BoxDecoration(
//gradient: blueGradient
//),
//),
//Container(
//child: SingleChildScrollView(
//padding: EdgeInsets.symmetric(
//horizontal: 40.0,
//vertical: 10.0,
//),
//child: Column(
//children: <Widget>[
//Padding(
//padding: const EdgeInsets.only(left: 6.0, top: 10, bottom: 10, right: 15),
//child: ClipRRect(
//borderRadius: BorderRadius.circular(4.0),
//child: Image.asset('assets/shelterimage.png'),
//)
//),
//Container(
//alignment: Alignment.centerLeft,
//child: Text(
//'United States Mission Transitional Housing San Jose',
//style: TextStyle(
//color: Colors.white,
//fontSize: 30.0,
//fontWeight: FontWeight.bold,
//),
//),
//),
//],
//),
//),
//),
//],
//),
//);

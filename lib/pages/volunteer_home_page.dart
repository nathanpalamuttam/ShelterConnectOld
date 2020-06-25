import 'package:flutter/material.dart';

import '../components/home_page_shelter_info.dart';

class VolunteerHomePage extends StatefulWidget {
  @override
  _VolunteerHomePageState createState() => _VolunteerHomePageState();
}

class _VolunteerHomePageState extends State<VolunteerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Home Page',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                ShelterInfo('United States Mission Transitional Housing San Jose', '/shelter_profile', 'assets/shelterimage.png'),
                SizedBox(
                  height: 3,
                ),
                ShelterInfo('United States Mission Transitional Housing San Jose', '/shelter_profile', 'assets/shelterimage.png'),
                SizedBox(
                  height: 3,
                ),
                ShelterInfo('United States Mission Transitional Housing San Jose', '/shelter_profile', 'assets/shelterimage.png'),
                SizedBox(
                  height: 3,
                ),
                ShelterInfo('United States Mission Transitional Housing San Jose', '/shelter_profile', 'assets/shelterimage.png'),
                SizedBox(
                  height: 3,
                ),
                ShelterInfo('United States Mission Transitional Housing San Jose', '/shelter_profile', 'assets/shelterimage.png')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

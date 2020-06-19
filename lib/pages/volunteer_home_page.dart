import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/components/home_page_shelterinfo.dart';

class VolunteerHomePage extends StatefulWidget {
  @override
  _VolunteerHomePageState createState() => _VolunteerHomePageState();
}

class _VolunteerHomePageState extends State<VolunteerHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Stack(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
//                            Color(0xFF3B96FF),
//                            Color(0xFF2E8FFF),
//                            Color(0xFF1672DB),
//                            Color(0xFF025BC2),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 70.0,
                        ),
                        child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text('Home Page',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              SizedBox(height: 30.0),
                              ShelterInfo('United States Mission Transitional Housing San Jose','/shelter_profile', 'assets/shelterimage.png'),
                              SizedBox(height: 30,),
                              ShelterInfo('United States Mission Transitional Housing San Jose','/shelter_profile', 'assets/shelterimage.png'),
                              SizedBox(height: 30,),
                              ShelterInfo('United States Mission Transitional Housing San Jose','/shelter_profile', 'assets/shelterimage.png'),
                              SizedBox(height: 30,),
                              ShelterInfo('United States Mission Transitional Housing San Jose','/shelter_profile', 'assets/shelterimage.png'),
                              SizedBox(height: 30,),
                              ShelterInfo('United States Mission Transitional Housing San Jose','/shelter_profile', 'assets/shelterimage.png')
                            ]),
                      ),
                    ),
                  ]))),
    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShelterInfo extends StatelessWidget {
  final String buttontext;
  final String buttonaction;
  final String buttonimage;

  ShelterInfo(this.buttontext, this.buttonaction, this.buttonimage);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, buttonaction);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.blue),
          constraints: BoxConstraints(
            maxHeight: 150.0,
            maxWidth:  380.0,
            minHeight: 150.0,
            minWidth: 300.0,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0, top: 10, bottom: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(buttonimage),
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 140,
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Text(buttontext,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                        SizedBox(height: 5,),


                      ]
                  )

                ]),
          ),
        ));
  }
}
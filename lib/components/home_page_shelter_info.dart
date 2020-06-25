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
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white30),
        constraints: BoxConstraints(
          maxHeight: 300.0,
          maxWidth: 390.0,
          minHeight: 300.0,
          minWidth: 390.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  width: 400,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(buttonimage, fit: BoxFit.fill,),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 600,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        buttontext,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1.5,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

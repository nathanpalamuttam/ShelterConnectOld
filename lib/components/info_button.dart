import 'package:flutter/material.dart';

import '../components/action_button.dart';

class InfoButton extends StatelessWidget {
  final String title;
  final String infoText;
  final String buttonText;
  final String buttonRoute;

  InfoButton(
      {@required this.title,
      @required this.infoText,
      @required this.buttonText,
      @required this.buttonRoute});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info),
      padding: EdgeInsets.only(top: 4.0, right: 2.0),
      onPressed: () {
        _routeInfoModalBottomSheet(context);
      },
    );
  }

  void _routeInfoModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape:
            RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(fontSize: 30.0),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.grey,
                              size: 25,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        infoText,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Spacer(flex: 4),
                      ActionButton(
                        text: buttonText,
                        onPressed: () =>
                            Navigator.pushNamed(context, buttonRoute),
                      ),
                    ],
                  )));
        });
  }
}

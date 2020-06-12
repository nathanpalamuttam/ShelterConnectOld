import 'package:flutter/material.dart';

import '../components/action_button.dart';

class InfoButton extends StatelessWidget {
  final String title;
  final String infoText;
  final String buttonText;
  final String buttonLocation;

  InfoButton(
      {@required this.title,
      @required this.infoText,
      @required this.buttonText,
      @required this.buttonLocation});

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
                          Text(title), // TODO: style text
                          Spacer(),
                          IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.orange,
                              size: 25,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                      // TODO: style text
                      Spacer(),
                      Text(infoText),
                      Spacer(flex: 4),
                      ActionButton(
                        text: buttonText,
                        onPressed: () =>
                            Navigator.pushNamed(context, buttonLocation),
                      ),
                    ],
                  )));
        });
  }
}

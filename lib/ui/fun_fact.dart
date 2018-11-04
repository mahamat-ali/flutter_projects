import 'package:flutter/material.dart';

import '../model/facts.dart';
import '../model/fact_colors.dart';

class FunFacts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FunFactsSate();
  }
}

class FunFactsSate extends State<FunFacts> {
  Facts facts = new Facts();
  FactColors color = new FactColors();
  Color changedColor = Colors.tealAccent;

  String fact = "Ants stretch when they wake up in the morning.";

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      color: changedColor,
      padding: EdgeInsets.only(
          top: deviceHeight * 0.1,
          left: deviceWidth * 0.1,
          right: deviceWidth * 0.1,
          bottom: deviceHeight * 0.06),
      child: Column(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height * 0.35,
              alignment: Alignment.topLeft,
              child: Text("Did you know? ",
                  style: TextStyle(fontSize: 26.0, color: Colors.grey))),
          Container(
              width: deviceWidth * 100,
              height: MediaQuery.of(context).size.height * 0.41,
              child: Text(fact,
                  style: TextStyle(fontSize: 26.0, color: Colors.white))),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 100,
            child: RaisedButton(
              color: Colors.white,
              child: Text("Show Another Fun Fact",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 20,
                      color: changedColor)),
              onPressed: () {
                setState(() {
                  //changing the color for each tap.
                  int newColor = int.parse("0xFF" + color.getColor());
                  Color tempChangedColor = Color(newColor);
                  changedColor = tempChangedColor;

                  //changing the fact.
                  fact = Facts().getFact();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

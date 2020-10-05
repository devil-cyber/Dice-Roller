import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");
  AssetImage diceImage1, diceImage2;
  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage1 = one;
      diceImage2 = one;
    });
  }

  void rollDice() {
    int random1 = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));
    AssetImage newImage1, newImage2;
    switch (random1) {
      case 1:
        newImage1 = one;
        break;
      case 2:
        newImage1 = two;
        break;
      case 3:
        newImage1 = three;
        break;
      case 4:
        newImage1 = four;
        break;
      case 5:
        newImage1 = five;
        break;
      case 6:
        newImage1 = six;
        break;
    }
    switch (random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceImage1 = newImage1;
      diceImage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: diceImage1, width: 200.0, height: 200.0),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Image(image: diceImage2, width: 200.0, height: 200.0),
              ),
              Container(
                  margin: EdgeInsets.only(top: 100),
                  child: RaisedButton(
                      color: Colors.yellow,
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                      child: Text('Roll the dice!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )),
                      onPressed: rollDice,
                      splashColor: Colors.orange,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )))
            ],
          ))),
    );
  }
}

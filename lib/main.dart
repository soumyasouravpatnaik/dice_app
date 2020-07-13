import 'package:flutter/material.dart';
import 'dart:math';
String img = "";
void main() {

  runApp(DicePage());
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var dice_left=1;
  var dice_right=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(title: Text('Dice'), backgroundColor: Colors.black),
            body: Center(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(onPressed: (){
                      setState(() {
                        dice_left = rand();
                      });
                      print('Left clicked');

                      print(dice_left);
                    },child: Image.asset('images/dice$dice_left.png')),
                  ),
                  Expanded(
                    child: FlatButton(onPressed: (){
                      setState(() {
                        dice_right = rand();
                      });
                      print('Right clicked');
                      print(dice_right);
                    },child: Image.asset("images/dice$dice_right.png")),
                  ),
                ],
              ),
            ),

        )
    );
  }
}


int rand(){
  var rng = new Random();
  return rng.nextInt(6) + 1;
}
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int index1 = 1;
  int index2 = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
            onLongPress: () {
              setState(() {
                index1 = 3;
              });
            },
            onPressed: () {
              setState(() {
                index1 = Random().nextInt(6) + 1;
                index2 = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/dice$index1.png'),
          ),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
              onPressed: () {
                setState(() {
                  index1 = Random().nextInt(6) + 1;
                  index2 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$index2.png')),
        ),
      ]),
    );
  }
}
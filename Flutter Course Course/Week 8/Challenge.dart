import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1;
  void changeAnswer()
  {
    setState(() {
      index = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Center(
          child: FlatButton(
              onPressed: changeAnswer,
              child: Image.asset('images/ball$index.png')
          ),
        ),
      ),
    );
  }
}

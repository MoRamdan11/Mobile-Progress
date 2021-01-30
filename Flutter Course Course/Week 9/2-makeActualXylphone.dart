import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int index)
  {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(1);
                  },
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(2);
                  },
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(3);
                  },
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(4);
                  },
                  color: Colors.pinkAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(5);
                  },
                  color: Colors.brown,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(6);
                  },
                  color: Colors.yellowAccent,
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    playSound(7);
                  },
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
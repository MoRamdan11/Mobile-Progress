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

  Expanded buildkey(Color c, int index)
  {
    return Expanded(
        child: FlatButton(
          color: c,
          onPressed: (){
            playSound(index);
          },
        )
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              buildkey(Colors.pinkAccent,1),
              buildkey(Colors.white,2),
              buildkey(Colors.cyan,3),
              buildkey(Colors.black,4),
              buildkey(Colors.yellowAccent,5),
              buildkey(Colors.blue,6),
              buildkey(Colors.blueGrey, 7),
            ],
          ),
        ),
      ),
    );
  }
}
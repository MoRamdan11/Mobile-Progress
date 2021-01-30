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
          child: Center(
            child: Column(
              children: <Widget> [
                FlatButton(
                  onPressed: (){
                    playSound(1);
                  },
                  color: Colors.white,
                  child: Text(
                    'ssound 1',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(2);
                  },
                  color: Colors.black,
                  child: Text(
                    'ssound 2',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(3);
                  },
                  color: Colors.red,
                  child: Text(
                    'ssound 3',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(4);
                  },
                  color: Colors.pinkAccent,
                  child: Text(
                    'ssound 4',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(5);
                  },
                  color: Colors.brown,
                  child: Text(
                    'ssound 5',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(6);
                  },
                  color: Colors.yellowAccent,
                  child: Text(
                    'ssound 6',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    playSound(7);
                  },
                  color: Colors.deepPurple,
                  child: Text(
                    'ssound 7',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



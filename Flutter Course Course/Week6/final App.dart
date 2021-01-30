import 'package:flutter/material.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/Salah.jpg'),
                ),
                Text('Mohamed Salah',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'
                  ),
                ),
                Text('Liverpol Player',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'SourceSansPro'
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 20,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.white,
                    //margin: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.teal,
                        size: 40,
                      ),
                      title: Text('011 286 11970',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 20,
                        color: Colors.teal,
                      ),
                      title: Text('mosalah11@gmail.com',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSansPro',
                          )
                    ),
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

void main() {
  runApp(MyApp());
}

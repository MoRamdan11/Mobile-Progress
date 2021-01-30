import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'account_screen.dart';
import 'package:custom_switch_button/custom_switch_button.dart';


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          centerTitle: true,
          title: Text(
            'Settings',
            style: TextStyle(
              fontSize: 35,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          //margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
          //margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //SizedBox(height: 20),
              settingcard('App language'),
              SizedBox(height: 20),
              switchcard('Send notification'),
              SizedBox(height: 20),
              //Account Widget
              acc(),
              SizedBox(height: 20),
              //Log Out Widget
              ListTile(
                tileColor: Colors.green[50],
                title: Text(
                  'Log out',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                trailing: CircleAvatar(
                  //backgroundColor: Colors,
                  child: Icon(
                    Icons.logout,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class settingcard extends StatefulWidget {
  final String text;
  //settingcard({ Key key, this.mo }): super(key: key);
  settingcard(this.text);
  @override
  _settingcardState createState() => _settingcardState(this.text);
}

class _settingcardState extends State<settingcard> {
  String textVal;
  _settingcardState(this.textVal);
  @override
  bool val = true;
  void changeVal(bool newVal) {
    val = newVal;
  }

  Widget build(BuildContext context) {
    return Card(
      //color: Colors.teal[100],
      //color: Colors.green[100],
      color: Colors.green[50],
      child: ListTile(
        title: Text(
          textVal,
          style: TextStyle(fontSize: 25),
        ),
        trailing: toggleSwitch('English', 'Arabic'),
      ),
    );
  }
}

class acc extends StatefulWidget {
  @override
  _accState createState() => _accState();
}

class _accState extends State<acc> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: true,
      tileColor: Colors.green[50],
      title: Text(
        'My Account',
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      leading: Icon(
        Icons.account_circle,
        color: Colors.green[900],
        //color: Colors.indigo,
        size: 40,
      ),
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder:
              (context)=>myaccount()));
          //myaccount();
        });
      },
    );
  }
}

class toggleSwitch extends StatefulWidget {
  String flabel;
  String slabel;
  toggleSwitch(this.flabel, this.slabel);
  @override
  _toggleSwitchState createState() =>
      _toggleSwitchState(this.flabel, this.slabel);
}

class _toggleSwitchState extends State<toggleSwitch> {
  String Flabel, Slabel;
  _toggleSwitchState(this.Flabel, this.Slabel);
  @override
  ToggleSwitch build(BuildContext context) {
    return ToggleSwitch(
      fontSize: 16,
      cornerRadius: 10,
      labels: [Flabel, Slabel],
      activeBgColor: Colors.green[300],
      inactiveBgColor: Colors.white,
    );
  }
}

class switchcard extends StatefulWidget {
  final String text;
  //settingcard({ Key key, this.mo }): super(key: key);
  switchcard(this.text);
  @override
  _switchcardState createState() => _switchcardState(this.text);
}

class _switchcardState extends State<switchcard> {
  String textVal;
  _switchcardState(this.textVal);
  @override
  bool val = true;
  void changeVal(bool newVal) {
    val = newVal;
  }

  Widget build(BuildContext context) {
    return Card(
      //color: Colors.teal[100],
      //color: Colors.green[100],
      color: Colors.green[50],
      child: ListTile(
        title: Text(
          textVal,
          style: TextStyle(fontSize: 25),
        ),
        trailing: Switch(
          value: val,
          onChanged: (bool newVal) {
            setState(() {
              changeVal(newVal);
            });
          },
          activeColor: Colors.green[300],
          inactiveTrackColor: Colors.white,
        ),
      ),
    );
  }
}

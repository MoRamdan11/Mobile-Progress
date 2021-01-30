import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class myaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SafeArea(
          child: Scaffold(
            /*appBar: AppBar(
              backgroundColor: Colors.green[900],
              //backgroundColor: Colors.Theme.of(context).accentColor,
              centerTitle: true,
              title: Text(
                'My Account',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),*/
            body: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 60,
                        backgroundImage: AssetImage('assets/images/health.png'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            //backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(
                              Icons.photo_camera_outlined,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'New Patient',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[800],
                        fontFamily: 'fonts/Montserrat-Bold.ttf',
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                      ),
                      title: Text('Name',
                          style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-Bold.ttf')),
                      subtitle: Text('Mohamed Salah',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-semiBold.ttf')),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.teal[800],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      height: 0,
                      child: Divider(
                        color: Colors.black,
                        //indent: 200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.teal[800],
                      ),
                      title: Text('Date of birth',
                          style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-Bold.ttf')),
                      subtitle: Text('15/6/1992',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-semiBold.ttf')),
                    ),
                    SizedBox(
                      width: 300,
                      height: 0,
                      child: Divider(
                        color: Colors.black,
                        //indent: 200,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone_android),
                      trailing: Icon(
                        Icons.edit,
                        color: Colors.teal[800],
                      ),
                      title: Text('Phone Number',
                          style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-Bold.ttf')),
                      subtitle: Text('0112 861 1970',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'fonts/Montserrat-semiBold.ttf')),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Health Condition',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.green[700],
                            fontFamily: 'fonts/Montserrat-Bold.ttf'),
                      ),
                    ),
                    Card(
                      //color: Colors.grey[300],
                      shadowColor: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Hello Mohamed,You are 28 years old.\nYour pressure is good. It\'s 80/120.\n'
                              'Your fat is 7%.\nYour blood sugar level is usual.\nYour last PCR test '
                              'in 1/12/2020 was negative.\nTreat-Min wish you a good health always.\n',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.teal[800],
                              fontFamily: 'fonts/Montserrat-Medium.ttf'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

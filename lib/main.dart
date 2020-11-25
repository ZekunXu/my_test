import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/textfield_title_widget.dart';
import 'components/login_text_field_widget.dart';
import 'components/home/robot_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(26, 77, 26, 30),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
                  child: TextFieldTitle(
                    text: "Sign In",
                    fontSize: 32,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    "username",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.000),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                LoginTextField(
                  hintText: "username",
                  onChanged: (value){
                    setState(() {
                      this.username = value;
                    });
                  },
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  width: double.maxFinite,
                  child: TextFieldTitle(
                    text: "password",
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: LoginTextField(
                    hintText: "password",
                    onChanged: (value){
                      setState(() {
                        this.password = value;
                      });
                    },
                  ),
                ),
                Container(
                  width: 100,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    color: Color.fromRGBO(53, 56, 60, 1.000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check,
                          color: Color.fromRGBO(63, 140, 255, 1.000),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        ),
                        Text(
                          "login",
                          style: TextStyle(
                              color: Color.fromRGBO(63, 140, 255, 1.000),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    onPressed: () {
                      print({"username": this.username, "password": this.password});
                      Navigator.push(context, CupertinoPageRoute(builder: (context){return RobotListPage();}));
                    },
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

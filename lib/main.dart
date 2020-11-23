import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                ),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text("username", textAlign: TextAlign.left,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.000), fontSize: 16, fontWeight: FontWeight.bold),),
                ),
                TextField(
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1.000), fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    hintText: "用户名",
                    hintStyle:
                    TextStyle(color: Color.fromRGBO(197, 198, 199, 1.000)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(125, 126, 131, 1.000),
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 1.000),
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  width: double.maxFinite,
                  child: Text("password", textAlign: TextAlign.left,style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.000), fontSize: 16, fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextField(
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.000), fontSize: 16),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                        hintText: "密码",
                        hintStyle: TextStyle(color: Color.fromRGBO(197, 198, 199, 1.000)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(125, 126, 131, 1.000),
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(255, 255, 255, 1.000),
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        )),
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
                    onPressed: () {},
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

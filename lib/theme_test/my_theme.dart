import 'package:flutter/material.dart';
import 'my_color.dart';

void main() {
  runApp(MyThemePage());
}

class MyThemePage extends StatefulWidget {
  MyThemePage({Key key}) : super(key: key);
  _MyThemePageState createState() => _MyThemePageState();
}

class _MyThemePageState extends State<MyThemePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          hintStyle: TextStyle(
              color: Color.fromRGBO(197, 198, 199, 1.000),
            fontSize: 16,
          ),
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
        brightness: Brightness.dark,
        primarySwatch: MyColor.blue,
        scaffoldBackgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        cardTheme: CardTheme(
          color: Color.fromRGBO(53, 56, 60, 1.000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          elevation: 3.0,
          shadowColor: Color.fromRGBO(0, 0, 0, 1.000),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is theme"),
        ),
        body: SafeArea(
          minimum: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "This is hint text.",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "This is hint text.",
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("click"),
                  ),
                  Card(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text("This is a card"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

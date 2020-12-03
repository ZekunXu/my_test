import 'package:flutter/material.dart';


void main () {
  runApp(MyThemePage());
}


class MyThemePage extends StatefulWidget {

  MyThemePage({Key key}) : super(key: key);
  _MyThemePageState createState ()=> _MyThemePageState();
}

class _MyThemePageState extends State<MyThemePage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        brightness: Brightness.light,
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
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is theme"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){}, child: Text("click"),),
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
    );
  }

}
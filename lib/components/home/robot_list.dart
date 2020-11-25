import 'package:flutter/material.dart';
import '../login_text_field_widget.dart';


void main(){
  runApp(RobotListPage());
}


class RobotListPage extends StatefulWidget {

  RobotListPage({Key key}) : super(key: key);

  _RobotListPageState createState ()=> _RobotListPageState();

}

class _RobotListPageState extends State<RobotListPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(26, 80, 26, 30),
            child: Column(
              children: [
                Card(
                  color: Color.fromRGBO(53, 56, 60, 1.000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(63, 140, 255, 1.000),style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(47, 49, 53, 1.000),
                          offset: Offset(0.0, 3.0),
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.android),
                          title: Text("乔庄1号乔庄1号"),
                          subtitle: Row(
                            children: [
                              Icon(Icons.add_alert_rounded),
                              Text("在线"),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                          color: Color.fromRGBO(125, 126, 131, 1.000),
                        ),
                        Row(
                          children: [
                            FlatButton(
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
                              },
                            ),
                            FlatButton(
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
                              },
                            ),
                          ],
                        )
                      ],
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
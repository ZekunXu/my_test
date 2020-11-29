import 'package:flutter/material.dart';
import '../login_text_field_widget.dart';
import 'robot_list_button_widget.dart';


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
            padding: EdgeInsets.fromLTRB(10, 80, 10, 30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Card(
                    color: Color.fromRGBO(53, 56, 60, 1.000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Container(
                      width: double.maxFinite,
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
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              leading: CircleAvatar(
                                radius: 20.0,
                                child: Icon(Icons.android),
                              ),
                              title: Text("乔庄1号乔庄1号", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                              subtitle: Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.add_alert, color: Color.fromRGBO(63, 140, 255, 1.000),),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),),
                                    Text("在线", style: TextStyle(fontSize: 14, color: Color.fromRGBO(242, 242, 242, 1.000)),),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(125, 126, 131, 1.000),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RobotListButton(
                                    text: "重启",
                                    backgroundColor: Color.fromRGBO(53, 56, 60, 1.000),
                                    primaryColor: Color.fromRGBO(218, 16, 11, 1.000),
                                    icon: Icons.restore,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  ),
                                  RobotListButton(
                                    text: "去导航",
                                    icon: Icons.navigation,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Card(
                    color: Color.fromRGBO(53, 56, 60, 1.000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Container(
                      width: double.maxFinite,
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
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              leading: CircleAvatar(
                                radius: 20.0,
                                child: Icon(Icons.android),
                              ),
                              title: Text("乔庄1号乔庄1号", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                              subtitle: Container(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.add_alert, color: Color.fromRGBO(63, 140, 255, 1.000),),
                                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),),
                                    Text("在线", style: TextStyle(fontSize: 14, color: Color.fromRGBO(242, 242, 242, 1.000)),),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color.fromRGBO(125, 126, 131, 1.000),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  RobotListButton(
                                    text: "重启",
                                    backgroundColor: Color.fromRGBO(53, 56, 60, 1.000),
                                    primaryColor: Color.fromRGBO(218, 16, 11, 1.000),
                                    icon: Icons.restore,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  ),
                                  RobotListButton(
                                    text: "去导航",
                                    icon: Icons.navigation,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
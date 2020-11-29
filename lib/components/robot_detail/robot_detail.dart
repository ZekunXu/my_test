import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../common_card_widget.dart';

void main() {
  runApp(RobotDetailPage());
}

class RobotDetailPage extends StatefulWidget {
  RobotDetailPage({Key key}) : super(key: key);

  _RobotDetailPageState createState() => _RobotDetailPageState();
}

class _RobotDetailPageState extends State<RobotDetailPage> {
  final String imgUrl =
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606561617157&di=1d85f2d5e4989cf2d84bc137fe4071e4&imgtype=0&src=http%3A%2F%2Fimg.hqew.com%2FFile%2FImages%2F0-9999%2F0%2FHR%2F20176314924974872.jpg";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 30),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 1.000),
                        offset: Offset(0.0, 3.0),
                        blurRadius: 5.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: CommonCard(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Text(
                            "robot name 001",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "battery: 20%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                            ),
                            Text(
                              "last update time: 20:20",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                ),
                Container(
                  child: CommonCard(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              border: Border.all(color: Color.fromRGBO(125, 126, 131, 1.000), width: 1.0, style: BorderStyle.solid),
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_downward, color: Colors.blue, size: 20,),
                                  hint: Text("选择地图"),
                                  onTap: () {},
                                  onChanged: (value) {},
                                  dropdownColor: Color.fromRGBO(53, 56, 60, 1.000),
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("00001"),
                                    ),
                                    DropdownMenuItem(
                                      child: Text("00002"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
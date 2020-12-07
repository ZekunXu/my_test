import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../common_card_widget.dart';
import 'show_bottom_sheet.dart';
import '../home/robot_list_button_widget.dart';

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

  String value = "b";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(47, 49, 53, 1.000),
        bottomNavigationBar: SizedBox(
          height: 49,
          width: double.infinity,
          child: RobotListButton(
            text: "去导航",
            onPressed: (){
              print("去导航啦");
            },
          ),
        ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Wrap(
                          spacing: 0.0,
                          children: [
                            Container(
                              alignment: AlignmentDirectional.centerStart,
                              width: double.maxFinite / 2,
                              child: Text(
                                "battery: 20%",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Container(
                              alignment: AlignmentDirectional.centerEnd,
                              width: double.maxFinite / 2,
                              child: Text(
                                "last update time: 20:20",
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
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
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              border: Border.all(
                                  color: Color.fromRGBO(125, 126, 131, 1.000),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                              color: Color.fromRGBO(53, 56, 60, 1.000),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                icon: Icon(
                                  Icons.arrow_downward,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                hint: Text("选择地图"),
                                onTap: () {},
                                onChanged: (value) {},
                                dropdownColor:
                                    Color.fromRGBO(53, 56, 60, 1.000),
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "00001",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      "00002",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                          Container(
                            width: double.maxFinite,
                            height: kMinInteractiveDimension,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              border: Border.all(
                                  color: Color.fromRGBO(125, 126, 131, 1.000),
                                  width: 1.0,
                                  style: BorderStyle.solid),
                              color: Color.fromRGBO(53, 56, 60, 1.000),
                            ),
                            child: Builder(
                              builder: (BuildContext context) {
                                return FlatButton(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      Align(
                                        child: Text(
                                          "hahahah",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      Align(
                                        child: Icon(
                                          Icons.arrow_downward,
                                          color: Colors.blue,
                                          size: 20,
                                        ),
                                        alignment: Alignment.centerRight,
                                      )
                                    ],
                                  ),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  onPressed: () {
                                    showModalBottomSheet(
                                        isScrollControlled: false,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return ShowBottomSheet();
                                        }).then((value) {
                                      print(value);
                                    });
                                  },
                                );
                              },
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

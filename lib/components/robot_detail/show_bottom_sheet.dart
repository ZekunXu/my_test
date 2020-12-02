import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../home/robot_list_button_widget.dart';

class ShowBottomSheet extends StatefulWidget {
  _ShowBottomSheetState createState ()=> _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {

  final String imgUrl = "https://images.freecreatives.com/wp-content/uploads/2016/04/Download-Abstract-Color-Background.jpg";
  String pathName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromRGBO(47, 49, 53, 1.000),
      ),
      height: 300,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            heightFactor: 1.4,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Material(
                      color: Color.fromRGBO(53, 56, 60, 1.000),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            this.pathName = "001";
                          });
                        },
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            border: Border.all(color: this.pathName == "001" ? Color.fromRGBO(63, 140, 255, 1.000) : Color.fromRGBO(53, 56, 60, 1.000)),
                          ),
                          width: 150,
                          height: 175,
                          child: Column(
                            children: [
                              Container(
                                height: 85,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(imgUrl),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                                alignment: Alignment.centerLeft,
                                child: Text("这是路径1这是路径1", maxLines: 2,style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Material(
                      color: Color.fromRGBO(53, 56, 60, 1.000),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            this.pathName = "002";
                          });
                        },
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            border: Border.all(color: this.pathName == "002" ? Color.fromRGBO(63, 140, 255, 1.000) : Color.fromRGBO(53, 56, 60, 1.000)),
                          ),
                          width: 150,
                          height: 175,
                          child: Column(
                            children: [
                              Container(
                                height: 85,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(imgUrl),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                                alignment: Alignment.centerLeft,
                                child: Text("这是路径1这是路径1", maxLines: 2,style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Material(
                      color: Color.fromRGBO(53, 56, 60, 1.000),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            this.pathName = "003";
                          });
                        },
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            border: Border.all(color: this.pathName == "003" ? Color.fromRGBO(63, 140, 255, 1.000) : Color.fromRGBO(53, 56, 60, 1.000)),
                          ),
                          width: 150,
                          height: 175,
                          child: Column(
                            children: [
                              Container(
                                height: 85,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20.0)),
                                    image: DecorationImage(
                                      image: NetworkImage(imgUrl),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                                alignment: Alignment.centerLeft,
                                child: Text("这是路径1这是路径1", maxLines: 2,style: TextStyle(color: Colors.white),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RobotListButton(
              text: "confirm",
              backgroundColor: Colors.amber,
              onPressed: (){
                Navigator.pop(context, pathName);
              },
            ),
          )
        ],
      ),
    );
  }

}
import 'package:flutter/material.dart';

class ShowBottomSheet extends StatefulWidget {
  _ShowBottomSheetState createState ()=> _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.amber,
      ),
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 150,
            width: 300,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            color: Colors.indigo,
          ),
          Container(
            height: 150,
            width: 300,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            color: Colors.indigo,
          ),
          Container(
            height: 150,
            width: 300,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            color: Colors.indigo,
          ),
          Container(
            height: 150,
            width: 300,
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }

}
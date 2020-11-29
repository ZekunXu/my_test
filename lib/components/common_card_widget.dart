import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonCard extends StatefulWidget {
  final Widget child;
  final EdgeInsets margin;

  CommonCard({Key key, @required this.child, this.margin}) : super(key: key);

  _CommonCardState createState() => _CommonCardState();
}

class _CommonCardState extends State<CommonCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            offset: Offset(0.0, 3.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Card(
        color: Color.fromRGBO(53, 56, 60, 1.000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        margin: widget.margin ?? const EdgeInsets.all(0.0),
        child: widget.child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RobotListButton extends StatefulWidget {

  final Color backgroundColor;
  final IconData icon;
  final Color primaryColor;
  final String text;
  final Function onPressed;
  
  RobotListButton({Key key, @required this.text, this.backgroundColor, this.icon, this.primaryColor, this.onPressed}) : super(key: key);
  
  _RobotListButtonState createState ()=> _RobotListButtonState();
}

class _RobotListButtonState extends State<RobotListButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0)),
      color: widget.backgroundColor ?? Color.fromRGBO(53, 56, 60, 1.000),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon ?? Icons.check,
            color: widget.primaryColor ?? Color.fromRGBO(63, 140, 255, 1.000),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          ),
          Text(
            widget.text,
            style: TextStyle(
                color: widget.primaryColor ?? Color.fromRGBO(63, 140, 255, 1.000),
                fontSize: 16),
          ),
        ],
      ),
      onPressed: widget.onPressed,
    );
  }
  
}
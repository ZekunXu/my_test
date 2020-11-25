import 'package:flutter/material.dart';

class TextFieldTitle extends StatefulWidget {
  final String text;
  final double fontSize;

  TextFieldTitle({Key key, @required this.text, this.fontSize}) : super(key: key);

  _TextFieldTitleState createState() => _TextFieldTitleState();
}

class _TextFieldTitleState extends State<TextFieldTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.000),
          fontSize: widget.fontSize ?? 16,
          fontWeight: FontWeight.bold),
    );
  }
}

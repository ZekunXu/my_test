import 'package:flutter/material.dart';


class LoginTextField extends StatefulWidget {

  final String hintText;
  final Function onChanged;

  LoginTextField({Key key, @required this.hintText, this.onChanged}) : super(key: key);

  _LoginTextFieldState createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {

    return TextField(
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.000),
          fontSize: 16),
      decoration: InputDecoration(
          contentPadding:
          EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          hintText: widget.hintText,
          hintStyle: TextStyle(
              color: Color.fromRGBO(197, 198, 199, 1.000)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(125, 126, 131, 1.000),
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(255, 255, 255, 1.000),
            ),
            borderRadius: BorderRadius.circular(6.0),
          )),
      onChanged: widget.onChanged,
    );
  }

}
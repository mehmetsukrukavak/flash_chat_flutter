import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class InputText extends StatelessWidget {
  InputText(
      {@required this.hintText,
      @required this.onChanged,
      @required this.obscure,
      @required this.inputType});
  final bool obscure;
  final String hintText;
  final Function onChanged;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: inputType,
        obscureText: obscure,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
        ),
        onChanged: onChanged,
        decoration: kInputTextDecoration.copyWith(
          hintText: hintText,
        ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class email_Input_Field extends StatelessWidget {
  final String textHint;
  final TextEditingController onchanged;
  final IconData icon;
  const email_Input_Field({
    Key? key,
    required this.textHint,
    required this.onchanged,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: onchanged,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: textHint,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.white)),
        suffixIcon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class password_Input_Field extends StatelessWidget {
  final String textHint;
  final IconData icon;
  final TextEditingController onChange;
  const password_Input_Field({
    Key? key,
    required this.textHint,
    this.icon = Icons.lock,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: onChange,
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

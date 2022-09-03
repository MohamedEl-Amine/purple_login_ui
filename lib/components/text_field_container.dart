// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget childTwo;
  const TextFieldContainer({
    Key? key,
    required this.childTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Color.fromARGB(255, 245, 243, 243),
              offset: Offset(1, 1),
              spreadRadius: 1)
        ],
      ),
      child: childTwo,
    );
  }
}

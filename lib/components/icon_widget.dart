// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class iconWidget extends StatelessWidget {
  final String imageIcon;
  const iconWidget({
    Key? key,
    required this.imageIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageIcon,
            ),
          )),
      height: size.height * 0.07,
      width: size.height * 0.07,
    );
  }
}

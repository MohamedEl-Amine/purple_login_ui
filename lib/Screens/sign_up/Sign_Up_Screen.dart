// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _sign_Up_WidgetState();
}

class _sign_Up_WidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}

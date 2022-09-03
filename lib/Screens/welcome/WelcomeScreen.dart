// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/body.dart';

class WelcomeWidget extends StatefulWidget {
  final String userEmail;
  const WelcomeWidget({Key? key, required this.userEmail}) : super(key: key);

  @override
  State<WelcomeWidget> createState() => _Welcome_WidgetState();
}

class _Welcome_WidgetState extends State<WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBody(emailUsers: widget.userEmail),
    );
  }
}

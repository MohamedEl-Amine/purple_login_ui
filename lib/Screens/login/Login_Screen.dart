// ignore_for_file: unused_import, camel_case_types

import 'package:flutter/material.dart';

import 'components/Body.dart';

class loginSurface extends StatefulWidget {
  const loginSurface({Key? key}) : super(key: key);

  @override
  State<loginSurface> createState() => login_WidgSurface();
}

class login_WidgSurface extends State<loginSurface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLogin(),
    );
  }
}

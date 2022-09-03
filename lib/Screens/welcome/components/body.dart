// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../auth_controler.dart';
import '../../../components/button_widget.dart';
import 'background.dart';

class WelcomeBody extends StatelessWidget {
  final String emailUsers;
  const WelcomeBody({Key? key, required this.emailUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundWelcome(
      childbody: Column(children: [
        SizedBox(
          height: 50,
        ),
        ButtonWidget(
            textSign: 'Sign Out',
            onPress: () {
              AuthController.instance.logOut();
            }),
      ]),
      emailuser: emailUsers,
    );
  }
}

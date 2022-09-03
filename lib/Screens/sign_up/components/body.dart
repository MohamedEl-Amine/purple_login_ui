// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../auth_controler.dart';
import '../../../components/button_widget.dart';
import '../../../components/comment_text.dart';
import '../../../components/email_input_field.dart';
import '../../../components/icon_widget.dart';
import '../../../components/or_divider_widget.dart';
import '../../../components/password_input_field.dart';
import '../../../components/text_field_container.dart';
import '../../login/Login_Screen.dart';
import 'background.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    bool ifCheck = false;
    Size size = MediaQuery.of(context).size;
    return BackgroundSignUp(
      childbody: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          TextFieldContainer(
            childTwo: email_Input_Field(
              onchanged: emailController,
              textHint: 'Enter your Email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldContainer(
            childTwo: password_Input_Field(
              onChange: passwordController,
              textHint: "Enter your password",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ButtonWidget(
            textSign: 'Sign Up',
            onPress: () {
              AuthController.instance.register(
                  emailController.text.trim(), passwordController.text.trim());
            },
          ),
          SizedBox(
            height: 30,
          ),
          OrDividerWidget(),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              iconWidget(imageIcon: "assets/images/facebook.png"),
              iconWidget(imageIcon: "assets/images/google.png"),
              iconWidget(imageIcon: "assets/images/twitter.png"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          commentWidget(
            ifHaveAccount: ifCheck,
            whenClicked: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return loginSurface();
                },
              ));
            },
          )
        ]),
      ),
    );
  }
}

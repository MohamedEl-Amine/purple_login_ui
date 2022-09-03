// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../auth_controler.dart';
import '../../../components/button_widget.dart';
import '../../../components/comment_text.dart';
import '../../../components/email_input_field.dart';
import '../../../components/password_input_field.dart';
import '../../../components/text_field_container.dart';
import '../../sign_up/Sign_Up_Screen.dart';
import 'Background.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    bool checkIfHaveAccount = true;
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            TextFieldContainer(
                childTwo: email_Input_Field(
              onchanged: emailController,
              textHint: 'Enter your Email',
            )),
            SizedBox(
              height: 20,
            ),
            TextFieldContainer(
              childTwo: password_Input_Field(
                onChange: passwordController,
                textHint: 'Enter your password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.35,
                ),
                RichText(
                    text: TextSpan(
                  text: "Forgot your Password?",
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ButtonWidget(
              onPress: () {
                AuthController.instance.login(emailController.text.trim(),
                    passwordController.text.trim());
              },
              textSign: 'Sign In',
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            commentWidget(
              ifHaveAccount: checkIfHaveAccount,
              whenClicked: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUpWidget();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

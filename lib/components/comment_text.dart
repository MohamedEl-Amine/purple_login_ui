import 'package:flutter/material.dart';

class commentWidget extends StatelessWidget {
  final VoidCallback whenClicked;
  final bool ifHaveAccount;
  const commentWidget({
    Key? key,
    required this.ifHaveAccount,
    required this.whenClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
          ifHaveAccount
              ? 'Don\'t have an account? '
              : 'Already have an account? ',
          style: TextStyle(color: Colors.grey[500], fontSize: 16)),
      GestureDetector(
        onTap: whenClicked,
        child: Text(
          ifHaveAccount ? 'Create' : 'Sign In',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      )
    ]);
  }
}

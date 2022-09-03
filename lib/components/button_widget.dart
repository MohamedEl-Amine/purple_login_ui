import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String textSign;
  final VoidCallback onPress;
  const ButtonWidget({
    Key? key,
    required this.textSign,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.5,
        height: size.width * 0.18,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/loginbtn.png",
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                blurRadius: 9,
                color: Color.fromARGB(255, 228, 228, 228),
                offset: Offset(1, 1),
              )
            ]),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 7),
            child: Text(textSign,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                )),
          ),
        ),
      ),
    );
  }
}

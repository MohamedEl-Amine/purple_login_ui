import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        //alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.3,
                  child: Image.asset(
                    "assets/images/loginimg.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Sign into your account",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

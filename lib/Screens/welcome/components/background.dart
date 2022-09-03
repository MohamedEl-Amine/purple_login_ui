// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundWelcome extends StatelessWidget {
  final Widget childbody;
  final String emailuser;
  const BackgroundWelcome(
      {Key? key, required this.childbody, required this.emailuser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height,
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: size.height * 0.3,
                child: Image.asset(
                  "assets/images/signup.png",
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
              top: 0,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: size.height * 0.15,
                      ),
                      height: size.width * 0.3,
                      width: size.width * 0.3,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white38,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/profile1.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Welcome User",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        emailuser,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    childbody,
                  ]))
        ]));
  }
}

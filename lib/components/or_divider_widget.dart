import 'package:flutter/material.dart';

import 'build_divider.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "OR",
              style: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.w600),
            ),
          ),
          BuildDivider()
        ],
      ),
    );
  }
}

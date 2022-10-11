import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconCard;
  final String iconText;
  final Color iconTextColor;

  IconContent(
      {required this.iconCard,
      required this.iconText,
      required this.iconTextColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.iconCard,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.iconText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}

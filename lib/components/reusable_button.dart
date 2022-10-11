import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableButton extends StatelessWidget {
  final String buttonText;

  ReusableButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(bottom: 20.0),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: Center(
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

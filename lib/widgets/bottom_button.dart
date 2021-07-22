import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeBottomButtonStyle,
          ),
        ),
        height: 50.0,
        width: double.infinity,
        color: kBottomContainerBgColor,
      ),
    );
  }
}

import 'package:school/core/utils/helper.dart';

import '../utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.buttonBackGroundColor,
      required this.screenWidth,
      required this.buttonTapHandler,
      required this.buttonText,
      this.haveBorder = false,
      this.onTapAvailable = true});
  final double screenWidth;
  final Function buttonTapHandler;
  final String buttonText;
  final Color? buttonBackGroundColor;
  final bool haveBorder;
  final bool onTapAvailable;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        buttonTapHandler();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(37),
          ),
        ),
        height: context.screenHeight * .07,
        width: screenWidth == 0.0 ? 150.0 : screenWidth,
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: context.screenWidth * .035,
            letterSpacing: 0.51,
            color: buttonBackGroundColor == null ? Colors.white : kPrimaryColor,
          ),
        ),
      ),
    );
  }
}

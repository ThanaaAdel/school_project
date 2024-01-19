import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';

class HomeRectangleCurve extends StatelessWidget {
  const HomeRectangleCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .033,
      height: context.screenHeight * .042,
      decoration: ShapeDecoration(
        color: kRectangleCurveColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(
              context.locale.isEnLocale ? 0 : 30,
            ),
            bottomRight: Radius.circular(
              context.locale.isEnLocale ? 30 : 0,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school/core/utils/assets.dart';
import 'package:school/core/utils/constants.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import 'custom_home_container.dart';
import 'home_rectangle_curve.dart';

class HomeDebtWidget extends StatelessWidget {
  const HomeDebtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: context.screenWidth * .05,
          left: context.locale.isEnLocale ? context.screenWidth * .05 : 0),
      child: CustomHomeContainer(
        color: kHomeDebtContainerColor,
        width: context.screenWidth,
        height: context.screenHeight * .2,
        child: Row(
          children: [
            const HomeRectangleCurve(),
            Padding(
              padding: EdgeInsets.only(
                  right:
                      context.locale.isEnLocale ? 0 : context.screenWidth * .05,
                  left: context.locale.isEnLocale
                      ? context.screenWidth * .05
                      : 0),
              child: SizedBox(
                width: context.screenWidth * .4,
                height: context.screenHeight * .1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.locale.translate("debt")!,
                      style: TextStyle(
                        fontSize: context.screenWidth * .04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gaps.vGap10,
                    Text(
                      "80.000  ر.س",
                      style: TextStyle(
                          fontSize: context.screenWidth * .05,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Image.asset(
              AssetsData.debtImage,
            )
          ],
        ),
      ),
    );
  }
}

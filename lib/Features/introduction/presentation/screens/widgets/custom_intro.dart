import 'package:flutter/material.dart';
import 'package:school/core/utils/constants.dart';
import 'package:school/core/utils/helper.dart';

class CustomIntro extends StatelessWidget {
  const CustomIntro({
    super.key,
    required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: context.screenWidth,
          height: context.screenHeight * .4,
        ),
        SizedBox(
          height: context.screenHeight * .0,
        ),
        Text(
          context.locale.translate("app_helps_you_to_solve_your_problems")!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.51,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Divider(
            color: kPrimaryColor,
            height: 3,
            indent: 100,
            endIndent: 100,
            thickness: 3,
          ),
        ),
        SizedBox(
          height: context.screenHeight * .15,
          width: context.screenWidth * .8,
          child: Text(
            context.locale.translate(
              "intro_text",
            )!,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: const TextStyle(
              color: Color(0xFF6C6A6A),
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.19,
              height: 2,
            ),
          ),
        ),
      ],
    ));
  }
}

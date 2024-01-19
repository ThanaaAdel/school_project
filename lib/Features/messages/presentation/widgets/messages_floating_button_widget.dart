import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';

class MessagesFloatingButtonWidget extends StatelessWidget {
  const MessagesFloatingButtonWidget({super.key, required this.tesTap});
  final Function tesTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * .02,
        horizontal: context.screenWidth * .03,
      ),
      child: ElevatedButton(
        onPressed: () {
          tesTap();
        },
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
          elevation: const MaterialStatePropertyAll(4),
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              vertical: context.screenHeight * .01,
              horizontal: context.screenWidth * .03,
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(
            kPrimaryColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(context.locale.translate("new_message")!),
        ),
      ),
    );
  }
}

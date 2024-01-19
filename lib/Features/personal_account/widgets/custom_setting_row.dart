import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../core/utils/gaps.dart';

// ignore: must_be_immutable
class CustomSettingRow extends StatelessWidget {
  CustomSettingRow(
      {super.key,
      this.deleteAccountColor,
      required this.path,
      required this.text,
      required this.function});

  final String text;
  final String path;
  final Function function;
  late int? deleteAccountColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom:  context.screenHeight*0.02,top:  context.screenHeight*0.01),
      child: InkWell(
        onTap: () {
          function();
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  path,
                  width: 20,
                  height: 20,
                  //color: kSettingIconsColor,
                ),
                Gaps.hGap20,
                Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: deleteAccountColor == null
                          ? const Color(0xFF292929)
                          : Color(deleteAccountColor!),
                      fontSize: 12),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}

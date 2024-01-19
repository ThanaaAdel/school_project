import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.tapHandler});
  final Function tapHandler;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actionsIconTheme: const IconThemeData(color: Colors.white),
      toolbarHeight: context.screenHeight * .1,
      backgroundColor: Colors.white,
      elevation: 2,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.locale.translate("welcome")!,
          ),
          Gaps.vGap8,
          const Text(
            "محمد أحمد محمود",
          )
        ],
      ),
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(AssetsData.introImage1),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            tapHandler();
          },
          child: Image.asset(
            AssetsData.bellIcon,
          ),
        ),
      ],
    );
  }
}

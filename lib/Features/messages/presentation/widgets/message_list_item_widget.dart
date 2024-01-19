import 'package:flutter/material.dart';
import 'package:school/Features/home/presentation/widgets/custom_home_container.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';

class MessagesListItemWidget extends StatelessWidget {
  const MessagesListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHomeContainer(
      height: context.screenHeight * .1,
      width: context.screenWidth,
      color: Colors.white,
      child: ListTile(
        title: const Text(
          "رسالة هامة من المدرسة",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          "نحيط سيادتكم علماً أنه يجب دفع قسط المصاريف",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
        trailing: const Text(
          "الإثنين",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundColor: kBackGroundColor,
          radius: context.screenHeight * .03,
          child: Image.asset(
            AssetsData.schoolIcon,
          ),
        ),
      ),
    );
  }
}

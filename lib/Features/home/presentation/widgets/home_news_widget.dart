import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school/core/utils/constants.dart';
import 'package:school/core/utils/helper.dart';

import 'home_news_list_item.dart';

class HomeNewsWidget extends StatelessWidget {
  const HomeNewsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    var listColor = [kNewsContainerColor1, kNewsContainerColor2];
    final _random = new Random();
    return Padding(
        padding: EdgeInsets.only(
            top: 20, right: 20, left: context.locale.isEnLocale ? 20 : 0),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) {
            return HomeNewsListItem(
              color: listColor[_random.nextInt(listColor.length)],
            );
          },
        ));
  }
}

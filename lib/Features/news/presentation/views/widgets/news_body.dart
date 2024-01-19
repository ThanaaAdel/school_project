import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_simple_app_bar.dart';
import '../../../../home/presentation/widgets/home_news_list_item.dart';

class NewsBody extends StatefulWidget {
  const NewsBody({super.key});

  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    var listColor = [kNewsContainerColor1, kNewsContainerColor2];
    final _random = new Random();

    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          appBarTitle: context.locale.translate('news')!,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: 3,
            itemBuilder: (context, index) {
              return HomeNewsListItem(
                color: listColor[_random.nextInt(listColor.length)],
              );
            },
          ),
        )
      ],
    );
  }
}

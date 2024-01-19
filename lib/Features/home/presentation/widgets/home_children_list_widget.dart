import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school/core/utils/constants.dart';

import 'home_children_list_item_widget.dart';

// ignore: must_be_immutable
class HomeChildrenListWidget extends StatelessWidget {
  HomeChildrenListWidget({super.key});
  var listColor = [kChildrenContainerColor1, kChildrenContainerColor2];
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return HomeChildrenListItemWidget(
          color: listColor[_random.nextInt(listColor.length)],
        );
      },
      padding: const EdgeInsets.only(top: 20, right: 5),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
    );
  }
}

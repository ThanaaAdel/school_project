import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/core/utils/helper.dart';
import 'package:school/core/widgets/custom_simple_app_bar.dart';

import '../../../../core/utils/constants.dart';
import '../../../home/presentation/manager/cubit/bottom_nav_cubit.dart';
import '../widgets/messages_floating_button_widget.dart';
import '../widgets/messages_list_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
          color: kBackGroundColor,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            CustomSimpleAppBar(
              isNav: true,
              appBarTitle: context.locale.translate("messages")!,
            ),
            Expanded(
              child: Stack(
                alignment: context.locale.isEnLocale
                    ? Alignment.bottomRight
                    : Alignment.bottomLeft,
                children: [
                  const MessagesListWidget(),
                  MessagesFloatingButtonWidget(
                    tesTap: () {
                      BlocProvider.of<BottomNavCubit>(context)
                          .updateBottomNavIndex(kSendMessageScreen);
                    },
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}

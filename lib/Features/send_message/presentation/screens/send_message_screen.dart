import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/Features/send_message/presentation/manager/cubit/attachments_cubit.dart';
import 'package:school/core/utils/assets.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';
import 'package:school/core/widgets/custom_simple_app_bar.dart';
import 'package:school/features/home/presentation/manager/cubit/bottom_nav_cubit.dart';

import '../widgets/send_message_body.dart';

class SendMessageScreen extends StatelessWidget {
  const SendMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Column(
        children: [
          CustomSimpleAppBar(
            isNav: true,
            appBarTitle: "",
            leadingWidget: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.screenWidth * .07,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      context.pushBack();
                    },
                    child: Image.asset(
                      AssetsData.sendIcon,
                      width: context.screenWidth * .06,
                      height: context.screenHeight * .06,
                    ),
                  ),
                  Gaps.hGap10,
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AttachmentsCubit>(context)
                          .pickFileFromDevice();
                    },
                    child: Image.asset(
                      AssetsData.attachIcon,
                      width: context.screenWidth * .1,
                      height: context.screenHeight * .1,
                    ),
                  ),
                  Gaps.hGap30,
                  Text(
                    context.locale.translate("new_message")!,
                    style: TextStyle(
                        fontSize: context.screenWidth * .04,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.51,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          const SendMessageBody(),
        ],
      ),
    );
  }
}

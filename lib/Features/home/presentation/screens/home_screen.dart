import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';
import '../../../../core/utils/constants.dart';
import '../manager/cubit/bottom_nav_cubit.dart';
import '../widgets/custom_home_app_bar_widget.dart';
import '../widgets/home_children_list_widget.dart';
import '../widgets/home_text_divider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: SafeArea(
          child: Column(
        children: [
          CustomHomeAppBar(
            tapHandler: () {
              BlocProvider.of<BottomNavCubit>(context)
                  .updateBottomNavIndex(kNotificationsScreen);
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: context.locale.isEnLocale ? 0 : 20,
                ),
                child: Column(
                  children: [

                    Gaps.vGap16,
                    HomeTextDivider(
                      rowText: context.locale.translate("children")!,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: context.locale.isEnLocale ? 0 : 20,
                          left: context.locale.isEnLocale ? 20 : 0),
                      child: SizedBox(
                        height: context.screenHeight ,
                        child: HomeChildrenListWidget(),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

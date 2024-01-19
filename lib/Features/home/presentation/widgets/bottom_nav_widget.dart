import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school/features/home/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'package:school/core/utils/constants.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/custom_svg_icon.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(20)),
            ),
            height: 70,
            child: GNav(
              selectedIndex: context.watch<BottomNavCubit>().bottomNavIndex,
              onTabChange: (value) {
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(value);
              },
              tabBorderRadius: context.screenWidth * .08,
              tabActiveBorder: Border.all(
                  color: kPrimaryColor,
                  width: context.screenWidth * .015), // tab button border
              curve: Curves.linear, // tab animation curves
              duration:
                  const Duration(milliseconds: 500), // tab animation duration
              gap: context.screenWidth *
                  .01, // the tab button gap between icon and text
              color: kBottomNavIconsColor, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: context.screenWidth * .06, // tab button icon size
              tabBackgroundColor:
                  kPrimaryColor, // selected tab background color
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5), // navigation bar padding
              tabs: [
                GButton(
                  icon: MyFlutterApp.home,
                  text: context.locale.translate("home")!,
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.email,
                  text: context.locale.translate("messages")!,
                ),
                GButton(
                  icon: Icons.person,
                  text: context.locale.translate("edit_profile")!,
                ),
                GButton(
                  icon: Icons.settings,
                  text: context.locale.translate("setting")!,
                )
              ],
            ),
          ),
          body: context.watch<BottomNavCubit>().selectedBottomNavScreen,
        );
      },
    );
  }
}

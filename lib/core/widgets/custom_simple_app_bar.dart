import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school/core/utils/helper.dart';

import '../locale/app_localizations.dart';

// ignore: must_be_immutable
class CustomSimpleAppBar extends StatelessWidget {
  CustomSimpleAppBar({
    super.key,
    required this.appBarTitle,
    this.leadingWidget,
    this.backgroundColor,
    this.isNav = false,
  });

  Widget? leadingWidget;
  Color? backgroundColor;
  final String appBarTitle;
  bool isNav;

  @override
  Widget build(BuildContext context) {
    late AppLocalizations locale;
    locale = AppLocalizations.of(context)!;
    // final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: context.screenHeight * .17,
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor ?? Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        leadingWidth: context.screenWidth,
        leading: leadingWidget,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                isNav ? context.pushBack() : Navigator.pop(context);
              },
              child: Icon(
                locale.isEnLocale
                    ? FontAwesomeIcons.arrowRightLong
                    : FontAwesomeIcons.arrowLeftLong,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: backgroundColor ?? Colors.white,
        title: Text(
          appBarTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: context.screenWidth * .04,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.51,
          ),
        ),
      ),
    );
  }
}

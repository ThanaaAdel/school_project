import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';
import 'package:school/core/utils/hex_color.dart';

import '../../../core/utils/assets.dart';
import '../../../core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_simple_app_bar.dart';
import '../../home/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'custom_setting_row.dart';

class PersonalAccountScreenBody extends StatelessWidget {
  const PersonalAccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          appBarTitle:  context.locale.translate('setting')!,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.04),
                  child: Column(children: [
                    itemRowImage(context),
                    Gaps.vGap30,
                    buildItemText(context),
                    Gaps.vGap10,
                    buildItemColum(context),
                    Gaps.vGap40,
                    buildItemButton(context),
                  ]),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }



  CustomButton buildItemButton(BuildContext context) {
    return CustomButton(
      onTapAvailable: true,
      buttonText: context.locale.translate('logout')!,
      buttonTapHandler: () async {
        Navigator.pushNamed(context, kLoginScreenRoute);
      },
      screenWidth: context.screenWidth * .75,
    );
  }

  Row buildItemText(BuildContext context) {
    return Row(
      children: [
        Text(
          context.locale.translate('setting')!,
          style:  TextStyle(
            color: Colors.black,
            fontSize: context.screenWidth*0.04,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Column buildItemColum(BuildContext context) {
    return Column(
      children: [
        CustomSettingRow(
            text: context.locale.translate('language')!,
            path: AssetsData.geographyIcon,
            function: () {
              Navigator.pushNamed(context, kLanguageScreenRoute);
            }),
        CustomSettingRow(
            text: context.locale.translate('messages')!,
            path: AssetsData.notificationIcon,
            function: () {
              BlocProvider.of<BottomNavCubit>(context)
                  .updateBottomNavIndex(kMessagesScreen);
            }),
        CustomSettingRow(
            text: context.locale.translate('terms_and_conditions')!,
            path: AssetsData.termsIcon,
            function: () {
              BlocProvider.of<BottomNavCubit>(context)
                  .updateBottomNavIndex(kTermsAndConditionsScreen);
            }),
        CustomSettingRow(
            text: context.locale.translate('privacy_policy')!,
            path: AssetsData.securityIcon,
            function: () {
              BlocProvider.of<BottomNavCubit>(context)
                  .updateBottomNavIndex(kPrivacyAndPolicyScreen);
            }),
        CustomSettingRow(
            text: context.locale.translate('contact_us')!,
            path: AssetsData.contactUsIcon,
            function: () {
              BlocProvider.of<BottomNavCubit>(context)
                  .updateBottomNavIndex(kContactUsScreen);
            }),
        CustomSettingRow(
            text: context.locale.translate('delete_account')!,
            deleteAccountColor: 0xfff16056,
            path: AssetsData.deleteAccountIcon,
            function: () {
              Navigator.pushNamed(context, kLoginScreenRoute);
            }),
      ],
    );
  }

  Row itemRowImage(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: context.screenHeight * .04,
          backgroundImage: const AssetImage(AssetsData.introImage1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.locale.translate("welcome")!,
                style: TextStyle(
                  color: const Color(0xff8b8989),
                  fontSize: context.screenWidth * .035,
                ),
              ),
              Text(
                "أحمد عبد الرحمن عز ",
                style: TextStyle(
                    color: const Color(0xff4e4d4d),
                    fontSize: context.screenWidth * .04,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
        ),
        const Spacer(),
        Container(
          width: 43,
          height: 43,
          decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12)),
          child: IconButton(
            onPressed: () {
          Navigator.pushNamed(context, kEditProfileScreenRoute);
            },
            icon: Icon(
              Icons.edit,
              color: HexColor("#9E9E9E"),
              size: 22,
            ),
          ),
        ),
      ],
    );
  }

  Padding itemRow(BuildContext context, image, name, price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: context.screenWidth * .29,
        height: context.screenHeight * .15,
        padding: EdgeInsets.symmetric(vertical: context.screenHeight * 0.02),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: Color(0xFFEFF9FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(image),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF00466B),
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ]),
      ),
    );
  }
}

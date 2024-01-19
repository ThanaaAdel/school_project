import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_login_text_field.dart';
import '../../../../../../core/widgets/custom_simple_app_bar.dart';

class ContactUsBody extends StatefulWidget {
  const ContactUsBody({super.key});

  @override
  State<ContactUsBody> createState() => _ContactUsBodyState();
}

class _ContactUsBodyState extends State<ContactUsBody> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    final passWordController = TextEditingController();
    final emailController = TextEditingController();
    final nameController = TextEditingController();

    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          appBarTitle: context.locale.translate('contact_us')!,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Gaps.vGap10,
                Center(
                  child: Image.asset(
                    AssetsData.contactUsImage,
                    width: context.screenWidth * .55,
                  ),
                ),
                Gaps.vGap15,
                const Text(
                  'كن دائماً على تواصل معنا ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Gaps.vGap10,
                const Text(
                  'نحن نسعى دائماً أن نكون فى خدمتك',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF6C6A6A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gaps.vGap30,
                CustomLoginTextField(
                  textLabel: context.locale.translate('name')!,
                  controller: nameController,
                  stringInTextField: "أحمد محمد عبد الرحمن",
                  obscureText: false,
                  textInputType: TextInputType.name,
                  validator: validateNameText,
                ),
                Gaps.vGap15,
                CustomLoginTextField(
                  textLabel: context.locale.translate('email')!,
                  controller: emailController,
                  stringInTextField: 'ahmedmohamed@gmail.com',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  validator: validateEmail,
                ),
                Gaps.vGap15,
                CustomLoginTextField(
                  textLabel: context.locale.translate('keep_your_messages')!,
                  controller: passWordController,
                  stringInTextField:
                      context.locale.translate('keep_your_messages')!,
                  obscureText: false,
                  textInputType: TextInputType.text,
                  validator: validateUserPhone,
                  height: 50,
                  multiLine: 5,
                ),
                Gaps.vGap15,
                CustomButton(
                  onTapAvailable: true,
                  buttonText: context.locale.translate('send')!,
                  buttonTapHandler: () async {
                    Navigator.pushNamed(context, kBottomNavRoute);
                  },
                  screenWidth: context.screenWidth * .75,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

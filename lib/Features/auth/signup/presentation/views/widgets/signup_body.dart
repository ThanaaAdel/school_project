import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_login_text_field.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passWordController = TextEditingController();
    final emailController = TextEditingController();
    final nameController = TextEditingController();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Gaps.vGap10,
          Center(
            child: Image.asset(
              AssetsData.signUpImage,
              width: context.screenWidth * .55,
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
            textLabel: context.locale.translate('phone_number')!,
            controller: phoneController,
            stringInTextField: "523672632",
            obscureText: false,
            textInputType: TextInputType.number,
            validator: validateUserPhone,
            prefixIcon: const Text("   966+  |  ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.45,
                )),
          ),
          Gaps.vGap15,
          CustomLoginTextField(
            textLabel: context.locale.translate('password')!,
            controller: passWordController,
            stringInTextField: "***********",
            obscureText: true,
            textInputType: TextInputType.number,
            validator: validateUserPhone,
          ),
          Gaps.vGap15,
          CustomButton(
            onTapAvailable: true,
            buttonText: context.locale.translate('sign_up')!,
            buttonTapHandler: () async {
              Navigator.pushNamed(context, kBottomNavRoute);
            },
            screenWidth: context.screenWidth * .75,
          ),
        ],
      ),
    );
  }
}

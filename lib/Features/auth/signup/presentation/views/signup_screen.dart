import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../core/widgets/custom_simple_app_bar.dart';
import 'widgets/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: context.screenSize * .07,
        child: CustomSimpleAppBar(
          appBarTitle: context.locale.translate('sign_up')!,
        ),
      ),
      body: FadeInDown(child: const SignUpBody()),
    );
  }
}

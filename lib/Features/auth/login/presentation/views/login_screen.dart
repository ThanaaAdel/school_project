import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../core/widgets/custom_simple_app_bar.dart';
import 'widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: context.screenSize * .07,
        child: CustomSimpleAppBar(
          appBarTitle: context.locale.translate('login')!,
        ),
      ),
      body: FadeInDown(child: const LoginBody()),
    );
  }
}

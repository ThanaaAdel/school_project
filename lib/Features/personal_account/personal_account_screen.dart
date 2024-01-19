import 'package:animate_do/animate_do.dart';
import 'widgets/personal_account_screen_body.dart';
import 'package:flutter/material.dart';

class PersonalAccountScreen extends StatelessWidget {
  const PersonalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 300),
      child: const PersonalAccountScreenBody(),
    );
  }
}

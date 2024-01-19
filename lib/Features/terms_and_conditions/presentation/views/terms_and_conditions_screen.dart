import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/terms_and_conditions_body.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: const TermsAndConditionsBody(),
    );
  }
}

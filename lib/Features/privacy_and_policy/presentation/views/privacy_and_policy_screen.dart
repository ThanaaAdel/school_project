import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/privacy_and_policy_body.dart';

class PrivacyAndPolicyScreen extends StatelessWidget {
  const PrivacyAndPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(child: const PrivacyAndPolicyBody());
  }
}

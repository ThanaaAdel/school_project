import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/contact_us_body.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: const ContactUsBody(),
    );
  }
}

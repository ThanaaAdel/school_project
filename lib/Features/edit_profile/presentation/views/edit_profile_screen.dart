import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/edit_profile_body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(child: const EditProfileBody());
  }
}

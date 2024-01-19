import 'package:flutter/material.dart';
import 'package:school/features/splash/presentation/views/widgets/splash_screen_body.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: splashScreenBody(),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:school/core/utils/helper.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';

class splashScreenBody extends StatefulWidget {
  const splashScreenBody({Key? key}) : super(key: key);

  @override
  State<splashScreenBody> createState() => _splashScreenBodyState();
}

class _splashScreenBodyState extends State<splashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: ZoomIn(
            child: Image.asset(
              AssetsData.logo,
              width: context.screenWidth * .6,
            ),
          ),
        ),
        Expanded(
            flex: 0,
            child: FadeInUp(child: Image.asset(AssetsData.splashImage))),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeView(),
        //     // calculations
        //     transition: Transition.fade,
        //     duration: kTranstionDuration);

        //   GoRouter.of(context).push(AppRouter.kHomeView);

        Navigator.pushNamed(context, kIntroductionScreenRoute);
      },
    );
  }
}

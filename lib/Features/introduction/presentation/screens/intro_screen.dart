import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:im_stepper/stepper.dart';
import 'package:school/features/introduction/manager/cubit/dot_stepper_cubit.dart';
import 'package:school/features/introduction/presentation/screens/widgets/custom_intro.dart';
import 'package:school/core/utils/assets.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_button.dart';

// ignore: must_be_immutable
class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  bool hasFinished = false;
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, kLoginScreen);
                },
                child: Text(
                  context.locale.translate("skip")!,
                  style: const TextStyle(
                    color: Color(0xFF6C6A6A),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.51,
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * .67,
                child: PageView(
                  onPageChanged: (value) {
                    activeStep = value;
                    BlocProvider.of<DotStepperCubit>(context).nextStep(value);
                    if (value == 2) {
                      hasFinished = true;
                    } else {
                      hasFinished = false;
                    }
                  },
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.start,
                  children: const [
                    CustomIntro(
                      imagePath: AssetsData.introImage1,
                    ),
                    CustomIntro(
                      imagePath: AssetsData.introImage2,
                    ),
                    CustomIntro(
                      imagePath: AssetsData.introImage3,
                    )
                  ],
                ),
              ),
              BlocBuilder<DotStepperCubit, DotStepperState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: IconStepper(
                      stepReachedAnimationEffect: accelerateEasing,
                      stepRadius: 3,
                      lineLength: 10,
                      activeStepBorderPadding: 2,
                      activeStepBorderColor: kPrimaryColor,
                      activeStepBorderWidth: 2,
                      stepColor: kPrimaryColor,
                      activeStepColor: kPrimaryColor,
                      lineColor: Colors.white,
                      steppingEnabled: true,
                      enableStepTapping: false,
                      enableNextPreviousButtons: false,
                      onStepReached: (index) {},
                      activeStep:
                          BlocProvider.of<DotStepperCubit>(context).activeStep,
                      icons: const [
                        Icon(Icons.circle, color: kPrimaryColor),
                        Icon(Icons.circle, color: kPrimaryColor),
                        Icon(Icons.circle, color: kPrimaryColor),
                      ],
                    ),
                  );
                },
              ),
              Center(
                child: CustomButton(
                  buttonText: context.locale.translate("lets_start")!,
                  screenWidth: context.screenWidth * .8,
                  buttonTapHandler: () {
                    if (hasFinished) {
                      Navigator.pushNamed(context, kLoginScreen);
                    } else {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
                      BlocProvider.of<DotStepperCubit>(context)
                          .nextStep(activeStep);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

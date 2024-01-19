import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/Features/edit_profile/presentation/views/edit_profile_screen.dart';
import 'package:school/features/auth/login/presentation/views/login_screen.dart';
import 'package:school/features/auth/signup/presentation/views/signup_screen.dart';
import 'package:school/features/introduction/presentation/screens/intro_screen.dart';
import 'package:flutter/material.dart';

import '../../../features/splash/presentation/views/splash_screen.dart';
import '../../../features/home/presentation/widgets/bottom_nav_widget.dart';
import '../../../features/introduction/manager/cubit/dot_stepper_cubit.dart';
import '../../../features/language/presentation/screens/language_screen.dart';
import '../constants.dart';
import '../functions/setup_service_locator.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    //final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const splashScreen());
      case kIntroductionScreenRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<DotStepperCubit>(),
                  child: IntroScreen(),
                ));

      case kBottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNavWidget());
      // case kBookDetailsScreen:
      //   return MaterialPageRoute(builder: (_) => const BookDetailsView());

      case kLoginScreenRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case kSignUpScreenRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case kLanguageScreenRoute:
        return MaterialPageRoute(builder: (_) => const LanguageScreen());
      case kEditProfileScreenRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      default:
        return null;
    }
  }
}

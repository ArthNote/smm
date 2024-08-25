import 'package:get/get.dart';
import 'package:smm/controllers/editProfileController.dart';
import 'package:smm/controllers/onboardingController.dart';
import 'package:smm/controllers/signinController.dart';
import 'package:smm/controllers/signupController.dart';
import 'package:smm/pages/editProfile.dart';
import 'package:smm/pages/navigation.dart';
import 'package:smm/pages/onboarding.dart';
import 'package:smm/pages/profile.dart';
import 'package:smm/pages/settings.dart';
import 'package:smm/pages/signin.dart';
import 'package:smm/pages/signup.dart';
import 'package:smm/pages/welcome.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: '/onboarding',
          page: () => OnBoardingScreen(),
          binding: BindingsBuilder(() {
            Get.put(() => OnBoardingController());
          }),
        ),
        GetPage(
          name: '/welcome',
          page: () => const WelcomeScreen(),
        ),
        GetPage(
          name: '/signin',
          page: () => SignInScreen(),
          binding: BindingsBuilder(() {
            Get.put(SigninController());
          }),
        ),
        GetPage(
          name: '/signup',
          page: () => SignUpScreen(),
          binding: BindingsBuilder(() {
            Get.put(SignupController());
          }),
        ),
        GetPage(
          name: '/navigation',
          page: () => Navigation(),
        ),
        GetPage(
          name: '/editProfile',
          page: () => EditProfileScreen(),
          binding: BindingsBuilder(() {
            Get.put(EditProfileController());
          }),
        ),
        GetPage(
          name: '/settings',
          page: () => SettingsScreen(),
        ),
      ];
}

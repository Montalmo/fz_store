import 'package:go_router/go_router.dart';

import 'package:fz_store/features/authentication/screens/login/login.dart';
import 'package:fz_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:fz_store/features/authentication/screens/signup/signup.dart';

class FZRouter {
  FZRouter._();

  static const onboardingSreenRouteName = 'onboarding-screen';
  static const loginSreenRouteName = 'login-screen';
  static const signUpSreenRouteName = 'signup-screen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: onboardingSreenRouteName,
        path: '/',
        builder: (context, state) => const OnBoardScreen(),
      ),
      GoRoute(
        name: loginSreenRouteName,
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: signUpSreenRouteName,
        path: '/gignup',
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}

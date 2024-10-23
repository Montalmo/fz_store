import 'package:fz_store/features/authentication/screens/signup/presentation/verify_email.dart';
import 'package:go_router/go_router.dart';

import 'package:fz_store/features/authentication/screens/login/presentation/login.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/onboarding.dart';
import 'package:fz_store/features/authentication/screens/signup/presentation/signup.dart';

class FZRouter {
  FZRouter._();

  static const onboardingSreenRouteName = 'onboarding-screen';
  static const loginSreenRouteName = 'login-screen';
  static const signUpSreenRouteName = 'signup-screen';
  static const verifyEmailSreenRouteName = 'sverify-email-screen';

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
        routes: [
          GoRoute(
            name: verifyEmailSreenRouteName,
            path: 'verifi-email',
            builder: (context, state) => const VrifyEmailScreen(),
          ),
        ],
      ),
    ],
  );
}

import 'package:fz_store/features/authentication/screens/password/presentation/reset_passwors.dart';
import 'package:go_router/go_router.dart';

import 'package:fz_store/common/widgets/success_screen.dart';
import 'package:fz_store/common/domain/success_screen_data.dart';
import 'package:fz_store/features/authentication/screens/password/presentation/forget_passwors.dart';
import 'package:fz_store/features/authentication/screens/login/presentation/login.dart';
import 'package:fz_store/features/authentication/screens/signup/presentation/signup.dart';
import 'package:fz_store/features/authentication/screens/signup/presentation/verify_email.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/onboarding.dart';

class FZRouter {
  FZRouter._();

  static const loginSreenRouteName = 'login-screen';
  static const signUpSreenRouteName = 'signup-screen';
  static const successSreenRouteName = 'success-screen';
  static const onboardingSreenRouteName = 'onboarding-screen';
  static const verifyEmailSreenRouteName = 'sverify-email-screen';
  static const forgotPasswordSreenRouteName = 'forgot-password-screen';
  static const resetPasswordSreenRouteName = 'reset-password-screen';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: onboardingSreenRouteName,
        path: '/',
        builder: (context, state) => const OnBoardScreen(),
      ),
      GoRoute(
        name: loginSreenRouteName,
        path: '/login-screen',
        builder: (context, state) => const LoginScreen(),
        routes: [
          GoRoute(
            name: signUpSreenRouteName,
            path: 'signup-screen',
            builder: (context, state) => const SignUpScreen(),
            routes: [
              GoRoute(
                name: verifyEmailSreenRouteName,
                path: 'verifi-email-screen',
                builder: (context, state) => const VrifyEmailScreen(),
              ),
            ],
          ),
          GoRoute(
            name: forgotPasswordSreenRouteName,
            path: 'forgot-password-screen',
            builder: (context, state) => const ForgotPasswordScreen(),
            routes: [
              GoRoute(
                name: FZRouter.resetPasswordSreenRouteName,
                path: 'reset-password',
                builder: (context, state) => const ResetPasswordScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: successSreenRouteName,
        path: '/success',
        builder: (context, state) {
          return SuccessScreen(
            screenData: state.extra as SuccessScreenData,
          );
        },
      ),
    ],
  );
}

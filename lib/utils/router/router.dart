import 'package:fz_store/features/authentication/screens/login/login.dart';
import 'package:fz_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:go_router/go_router.dart';

class FZRouter {
  FZRouter._();

  static const onboardingSreenRouteName = 'onboarding-screen';
  static const loginSreenRouteName = 'login-screen';

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
    ],
  );
}

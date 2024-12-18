import 'package:fz_store/features/personalization/screens/profile/presentation/profile.dart';
import 'package:fz_store/features/shop/screens/product_detail/presentation/product_detail.dart';
import 'package:go_router/go_router.dart';

import 'package:fz_store/common/widgets/success_screen.dart';
import 'package:fz_store/common/domain/success_screen_data.dart';
import 'package:fz_store/features/shop/screens/home/presentation/home.dart';
import 'package:fz_store/features/shop/screens/store/presentation/store.dart';
import 'package:fz_store/features/shop/screens/wishlist/presentation/wishlist.dart';
import 'package:fz_store/features/authentication/screens/login/presentation/login.dart';
import 'package:fz_store/features/authentication/screens/signup/presentation/signup.dart';
import 'package:fz_store/features/shop/screens/navigation/presentation/navigation_menu.dart';
import 'package:fz_store/features/personalization/screens/settings/presentation/settings.dart';
import 'package:fz_store/features/authentication/screens/signup/presentation/verify_email.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/onboarding.dart';
import 'package:fz_store/features/authentication/screens/password/presentation/reset_passwors.dart';
import 'package:fz_store/features/authentication/screens/password/presentation/forget_passwors.dart';

class FZRouter {
  FZRouter._();

  static const homeSreenRouteName = 'home-screen';
  static const storeSreenRouteName = 'store-screen';
  static const loginSreenRouteName = 'login-screen';
  static const signUpSreenRouteName = 'signup-screen';
  static const successSreenRouteName = 'success-screen';
  static const settingsSreenRouteName = 'settings-screen';
  static const favoriteSreenRouteName = 'favorite-screen';
  static const onboardingSreenRouteName = 'onboarding-screen';
  static const verifyEmailSreenRouteName = 'sverify-email-screen';
  static const resetPasswordSreenRouteName = 'reset-password-screen';
  static const forgotPasswordSreenRouteName = 'forgot-password-screen';
  static const navigationMenuSreenRouteName = 'navigation-menu-screen';
  static const profileSreenRouteName = 'profile-screen';
  static const productDetailSreenRouteName = 'product-detail-screen';

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
              GoRoute(
                name: navigationMenuSreenRouteName,
                path: 'navigation-menu-screen',
                builder: (context, state) => const NavigationMenu(),
                routes: [
                  GoRoute(
                    name: homeSreenRouteName,
                    path: 'home-screen',
                    builder: (context, state) => const HomeScreen(),
                  ),
                  GoRoute(
                    name: storeSreenRouteName,
                    path: 'store-screen',
                    builder: (context, state) => const StoreScreen(),
                  ),
                  GoRoute(
                    name: favoriteSreenRouteName,
                    path: 'favorite-screen',
                    builder: (context, state) => const FavoriteScreen(),
                  ),
                  GoRoute(
                    name: settingsSreenRouteName,
                    path: 'settings-screen',
                    builder: (context, state) => const SettingsScreen(),
                    routes: [
                      GoRoute(
                        name: profileSreenRouteName,
                        path: 'profile-screen',
                        builder: (context, state) => const ProfileScreen(),
                      ),
                    ],
                  ),
                ],
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
          GoRoute(
            name: productDetailSreenRouteName,
            path: 'product-detail-screen',
            builder: (context, state) => const ProductDetail(),
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

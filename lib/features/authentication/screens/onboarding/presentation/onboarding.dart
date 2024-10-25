import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/authentication/controllers/onboarding_controllers/onboarding_controller.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/widgets/onboardingnext_button.dart';

import 'package:fz_store/utils/constants/image_strings.dart';
import 'package:fz_store/utils/constants/text_strings.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/widgets/onboarding_skip.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:fz_store/features/authentication/screens/onboarding/presentation/widgets/onboarding_navigation.dart';
import 'package:fz_store/utils/router/router.dart';
import 'package:go_router/go_router.dart';

class OnBoardScreen extends ConsumerWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(currentOnBoardingPageProvider);

    PageController pageController = PageController(
      initialPage: currentPageIndex,
    );

    void slideOnboardingPage(int pageIndex, PageController pageController) {
      if (pageController.hasClients) {
        if (pageIndex < 3) {
          pageController.animateToPage(pageIndex,
              duration: const Duration(milliseconds: 240),
              curve: Curves.easeInOut);
        }
      }
    }

    void skipAllOnboardingPages(PageController pageController) {
      pageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 360),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (pageIndex) {
              ref.read(currentOnBoardingPageProvider.notifier).state =
                  pageIndex;
            },
            children: const [
              OnBoardingPage(
                image: FZImages.onBpoardingImage1,
                title: FZText.onBoardingTitle1,
                subTitle: FZText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: FZImages.onBpoardingImage2,
                title: FZText.onBoardingTitle2,
                subTitle: FZText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: FZImages.onBpoardingImage3,
                title: FZText.onBoardingTitle3,
                subTitle: FZText.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardSkip(
            onPress: () {
              skipAllOnboardingPages(pageController);
            },
          ),
          OnboardingNavigation(
            pageController: pageController,
          ),
          OnBoardingNextButton(
            onPageIndex: currentPageIndex,
            onPress: () {
              if (currentPageIndex == 2) {
                context.pushNamed(FZRouter.loginSreenRouteName);
              }
              slideOnboardingPage(currentPageIndex + 1, pageController);
            },
          ),
        ],
      ),
    );
  }
}

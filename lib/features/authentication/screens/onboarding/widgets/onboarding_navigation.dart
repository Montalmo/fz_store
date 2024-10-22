import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:fz_store/utils/constants/colors.dart';
import 'package:fz_store/utils/constants/sizes.dart';
import 'package:fz_store/utils/device/device_utility.dart';

class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: FZDeviceUtils.getBottomNavigationBarHigth(context),
      left: FZSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: const ExpandingDotsEffect(
          activeDotColor: FZColors.primary,
          dotHeight: 6,
        ),
        controller: pageController,
        count: 3,
      ),
    );
  }
}

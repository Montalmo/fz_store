import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/shop/screens/home/domain/promo_banner.dart';

final List<FZPromoBanner> promoBannersList = [
  FZPromoBanner(
      imagePath: 'assets/images/bunners/bunner_01.png', onPressed: () {}),
  FZPromoBanner(
      imagePath: 'assets/images/bunners/bunner_03.png', onPressed: () {}),
  FZPromoBanner(
      imagePath: 'assets/images/bunners/bunner_02.png', onPressed: () {}),
];

final promoBannrsDataControllerProvider = Provider<List<FZPromoBanner>>((ref) {
  return promoBannersList;
});

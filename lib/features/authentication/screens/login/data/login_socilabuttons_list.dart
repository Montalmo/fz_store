import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/common/widgets/social_button.dart';
import 'package:fz_store/utils/constants/image_strings.dart';

final List<FZSocialButton> loginSocialButtonsList = [
      FZSocialButton(
          lightIconPath: FZImages.lightApple,
          darkIconPath: FZImages.darkApple,
          onPressed: () {}),
      FZSocialButton(
          lightIconPath: FZImages.lightFacebook,
          darkIconPath: FZImages.lightFacebook,
          onPressed: () {}),
      FZSocialButton(
          lightIconPath: FZImages.lightGoogle,
          darkIconPath: FZImages.lightGoogle,
          onPressed: () {}),
    ];

final loginSocialButtonsListProvider = Provider<List<FZSocialButton>>((ref) {
  return loginSocialButtonsList;
});
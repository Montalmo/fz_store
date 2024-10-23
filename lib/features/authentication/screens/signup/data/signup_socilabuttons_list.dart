import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/common/widgets/social_button.dart';
import 'package:fz_store/utils/constants/image_strings.dart';

final List<FZSocialButton> signUpSocialButtonsList = [
  FZSocialButton(
      lightIconPath: FZImages.lightFacebook,
      darkIconPath: FZImages.lightFacebook,
      onPressed: () {}),
  FZSocialButton(
      lightIconPath: FZImages.lightGoogle,
      darkIconPath: FZImages.lightGoogle,
      onPressed: () {}),
];

final signUpSocialButtonsListProvider = Provider<List<FZSocialButton>>((ref) {
  return signUpSocialButtonsList;
});

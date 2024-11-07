import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/personalization/screens/settings/domain/setting_menu_tile_model.dart';
import 'package:fz_store/utils/constants/text_strings.dart';

List<SettingMenuTile> accountSettingsMenuTileList = [
  SettingMenuTile(
      icon: Icons.pin_drop_outlined,
      title: FZText.addressTitle,
      subTitle: FZText.addressSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.shopping_cart_checkout,
      title: FZText.cartTitle,
      subTitle: FZText.cartSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.check_box_outlined,
      title: FZText.ordersTitle,
      subTitle: FZText.ordersSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.moving,
      title: FZText.bankTitle,
      subTitle: FZText.banksSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.discount_outlined,
      title: FZText.couponsTitle,
      subTitle: FZText.couponsSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.notifications_active_outlined,
      title: FZText.notificationsTitle,
      subTitle: FZText.notificationsSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.privacy_tip_outlined,
      title: FZText.privacyTitle,
      subTitle: FZText.privacySubTitle,
      onPressed: () {}),
];

List<SettingMenuTile> appSettingsMenuTileList = [
  SettingMenuTile(
      icon: Icons.local_cafe_outlined,
      title: FZText.safeModeTitle,
      subTitle: FZText.safeModeSubTitle,
      onPressed: () {}),
  SettingMenuTile(
      icon: Icons.image_aspect_ratio,
      title: FZText.imageHDTitle,
      subTitle: FZText.imageHDSubTitle,
      onPressed: () {}),
];

final accountSettingsMenuTileListProvider =
    Provider<List<SettingMenuTile>>((ref) {
  return accountSettingsMenuTileList;
});
final appSettingsMenuTileListProvider = Provider<List<SettingMenuTile>>((ref) {
  return appSettingsMenuTileList;
});

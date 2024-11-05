import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/personalization/screens/settings/domain/setting_menu_tile_model.dart';
import 'package:fz_store/utils/constants/text_strings.dart';

List<SettingMenuTile> settingsMenuTileList = [
  SettingMenuTile(
      icon: Icons.pin_drop_outlined,
      title: FZText.addressTitle,
      subTitle: FZText.addressSubTitle,
      onPressed: () {}),
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

final settingsMenuTileListProvider = Provider<List<SettingMenuTile>>((ref) {
  return settingsMenuTileList;
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/personalization/screens/profile/domain/profile_menu_tile_model.dart';

List<FZProfileMenuTile> profileInformationMenuTileList = [
  FZProfileMenuTile(
      lable: 'Name',
      value: 'Mantlmo S',
      onPress: () {},
      icon: Icons.chevron_right),
  FZProfileMenuTile(
      lable: 'Username',
      value: 'DartMontalmo',
      onPress: () {},
      icon: Icons.chevron_right),
];

List<FZProfileMenuTile> personalInformationMenuTileList = [
  FZProfileMenuTile(
      lable: 'User ID',
      value: '456777',
      onPress: () {},
      icon: Icons.copy_rounded),
  FZProfileMenuTile(
      lable: 'E-Mail',
      value: 'dartmontamo@gmail.com',
      onPress: () {},
      icon: Icons.chevron_right),
  FZProfileMenuTile(
      lable: 'Phone Number',
      value: '+38 050 500 50 50',
      onPress: () {},
      icon: Icons.chevron_right),
  FZProfileMenuTile(
      lable: 'Gender',
      value: 'Male',
      onPress: () {},
      icon: Icons.chevron_right),
  FZProfileMenuTile(
      lable: 'date og Birth',
      value: '31 July, 1982',
      onPress: () {},
      icon: Icons.chevron_right),
];

final profileInformationMenuTileListProvider =
    Provider<List<FZProfileMenuTile>>((ref) {
  return profileInformationMenuTileList;
});

final personalInformationMenuTileListProvider =
    Provider<List<FZProfileMenuTile>>((ref) {
  return personalInformationMenuTileList;
});

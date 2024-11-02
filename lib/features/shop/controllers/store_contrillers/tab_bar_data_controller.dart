import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fz_store/features/shop/screens/store/data/tabs_list.dart';

final tabBarTabsListProvider = Provider<List<Tab>>((ref) {
  return FZStoreTadbList.storeTabList;
});

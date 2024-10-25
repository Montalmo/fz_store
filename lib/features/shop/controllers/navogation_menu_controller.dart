import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:fz_store/features/shop/screens/navigation/data/navigation_pages.dart';

final currentPageIndexProvider = StateProvider<int>((ref) {
  return 0;
});

final navigationMenuPagesProvider = Provider<List<Widget>>((ref) {
  return navigationMenuPages;
});
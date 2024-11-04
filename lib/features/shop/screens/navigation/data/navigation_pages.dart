import 'package:flutter/material.dart';

import 'package:fz_store/features/shop/screens/home/presentation/home.dart';
import 'package:fz_store/features/shop/screens/store/presentation/store.dart';
import 'package:fz_store/features/shop/screens/wishlist/presentation/wishlist.dart';

final List<Widget> navigationMenuPages = [
  const HomeScreen(),
  const StoreScreen(),
  const FavoriteScreen(),
  Container(color: Colors.red),
];

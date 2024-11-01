import 'package:flutter/material.dart';
import 'package:fz_store/features/shop/screens/home/presentation/home.dart';
import 'package:fz_store/features/shop/screens/store/presentation/store.dart';

final List<Widget> navigationMenuPages = [
  const HomeScreen(),
  const StoreScreen(),
  Container(color: Colors.green),
  Container(color: Colors.red),
];

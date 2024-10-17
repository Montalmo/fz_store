import 'package:flutter/material.dart';

import 'package:fz_store/utils/theme/theme.dart';

class FZApp extends StatelessWidget {
  const FZApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: FZAppTheme.lightTheme,
      darkTheme: FZAppTheme.darkTheme,
    );
  }
}

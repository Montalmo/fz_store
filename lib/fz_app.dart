import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:fz_store/utils/router/router.dart';

import 'package:fz_store/utils/theme/theme.dart';

class FZApp extends StatelessWidget {
  const FZApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: FZAppTheme.lightTheme,
      darkTheme: FZAppTheme.darkTheme,
      routerConfig: FZRouter.router,
    );
  }
}

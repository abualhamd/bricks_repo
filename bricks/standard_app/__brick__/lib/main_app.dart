import 'package:flutter/material.dart';

import 'app/app.dart';
import 'core/core.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLang.localizationsDelegates,
      supportedLocales: AppLang.supportedLocales,
      routerConfig: appRouter,
    );
  }
}

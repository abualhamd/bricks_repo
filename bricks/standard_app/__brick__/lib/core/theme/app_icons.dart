import 'package:flutter/material.dart';

class AppIcons extends ThemeExtension<AppIcons> {
  // Widget get gallery => const Icon(Icons.camera);

  @override
  ThemeExtension<AppIcons> copyWith() {
    return AppIcons();
  }

  @override
  ThemeExtension<AppIcons> lerp(
      covariant ThemeExtension<AppIcons>? other, double t) {
    return AppIcons();
  }
}

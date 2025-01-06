import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  // Color get black => const Color(0xff000000);
  @override
  ThemeExtension<AppColors> copyWith() {
    return AppColors();
  }

  @override
  ThemeExtension<AppColors> lerp(
      covariant ThemeExtension<AppColors>? other, double t) {
    return AppColors();
  }
}

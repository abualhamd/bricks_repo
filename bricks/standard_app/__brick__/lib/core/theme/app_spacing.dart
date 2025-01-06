import 'package:flutter/material.dart';

class AppSpacing extends ThemeExtension<AppSpacing> {
  // double get xxs => 4;
  // double get xs => 8;
  // double get s => 12;
  // double get m => 16;
  // double get l => 24;
  // double get xl => 32;
  // double get xxl => 40;
  @override
  ThemeExtension<AppSpacing> copyWith() {
    return AppSpacing();
  }

  @override
  ThemeExtension<AppSpacing> lerp(
      covariant ThemeExtension<AppSpacing>? other, double t) {
    return AppSpacing();
  }
}

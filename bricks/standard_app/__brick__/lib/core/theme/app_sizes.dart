import 'package:flutter/material.dart';

class AppSizes extends ThemeExtension<AppSizes> {
  // double get s => 10;
  // double get m => 26;
  // double get l => 30;
  // double get xl => 32;
  // double get xxl => 36;
  @override
  ThemeExtension<AppSizes> copyWith() {
    return AppSizes();
  }

  @override
  ThemeExtension<AppSizes> lerp(
      covariant ThemeExtension<AppSizes>? other, double t) {
    return AppSizes();
  }
}

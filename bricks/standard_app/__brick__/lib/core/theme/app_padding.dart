import 'package:flutter/material.dart';

class AppPadding extends ThemeExtension<AppPadding> {
  // double get xs => 2;
  // double get s => 4;
  // double get m => 8;
  // double get l => 10;
  // double get xl => 14;
  // double get xxl => 16;
  // double get xxxl => 20;
  @override
  ThemeExtension<AppPadding> copyWith() {
    return AppPadding();
  }

  @override
  ThemeExtension<AppPadding> lerp(
      covariant ThemeExtension<AppPadding>? other, double t) {
    return AppPadding();
  }
}

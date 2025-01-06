import 'package:flutter/material.dart';

class AppBorderRadius extends ThemeExtension<AppBorderRadius> {
  // double get xxs => 7;
  // double get xs => 8;
  // double get s => 9;
  // double get m => 10;
  // double get l => 13.5;
  // double get xl => 25;
  // double get xxl => 26.5;
  // double get xxxl => 51;
  @override
  ThemeExtension<AppBorderRadius> copyWith() {
    return AppBorderRadius();
  }

  @override
  ThemeExtension<AppBorderRadius> lerp(
      covariant ThemeExtension<AppBorderRadius>? other, double t) {
    return AppBorderRadius();
  }
}

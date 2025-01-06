import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils.dart';

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

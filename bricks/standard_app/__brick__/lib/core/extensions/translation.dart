import 'package:flutter/material.dart';

import '../generated/l10n/langs.dart';

extension Translation on BuildContext {
  AppLang get tr => AppLang.of(this) ?? AppLangAr();

  TextDirection get direction => WidgetsLocalizations.of(this).textDirection;
}

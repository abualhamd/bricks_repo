import 'package:flutter/material.dart';

import 'app_border_radius.dart';
import 'app_colors.dart';
import 'app_icons.dart';
import 'app_padding.dart';
import 'app_sizes.dart';
import 'app_spacing.dart';

ThemeData createTheme() {
  return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
          // primary: Color(0xff0b4c58),
          // onPrimary: Colors.white,
          // secondary: Color(0xffc9ce57),
          // onSecondary: Color(0xff304957),
          // error: Colors.red,
          // onError: Colors.white,
          ),
      // fontFamily: 'Cairo',
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        labelLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: Color(0xffdad8d1),
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1)),
      ),
      cardTheme: CardTheme(
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      appBarTheme: const AppBarTheme(
        toolbarHeight: 79,
        elevation: 10,
        shadowColor: Color(0x29000000),
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
      buttonTheme: ButtonThemeData(
        height: 56,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius().m),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius().m),
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius().xs),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: AppPadding().m, horizontal: AppPadding().xxl),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppBorderRadius().xs,
            ),
            side: const BorderSide(
              color: Color(0xfff0e9df),
            ),
          ),
        ),
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            // fontFamily: "Tajawal",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Color.fromARGB(255, 52, 51, 48),
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius().xs),
            side: const BorderSide(
              color: Color(0x40447583),
            ),
          ),
        ),
        constraints: const BoxConstraints(maxHeight: 48, minHeight: 48),
      ),
      badgeTheme: BadgeThemeData(
        backgroundColor: const Color(0xffc9ce57),
        textColor: Colors.white,
        alignment: AlignmentDirectional.lerp(
          AlignmentDirectional.topStart,
          AlignmentDirectional.bottomStart,
          0.25,
        ),
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: Color(0xffdad8d1),
        ),
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        side: BorderSide.none,
        showCheckmark: false,
        selectedColor: const Color(0xff0b4c58),
      ),
      dividerColor: const Color(0xffe8e8dd),
      listTileTheme: const ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.zero,
      ),
      expansionTileTheme: ExpansionTileThemeData(
        collapsedBackgroundColor: const Color(0xff447583),
        backgroundColor: const Color(0xff447583),
        tilePadding: EdgeInsetsDirectional.only(start: AppPadding().m),
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius().xs)),
        collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius().xs)),
      ),
      dataTableTheme: DataTableThemeData(
        headingRowColor:
            WidgetStatePropertyAll(const Color(0xff0b4c58).withOpacity(0.2)),
        headingTextStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
      ),
      extensions: [
        AppPadding(),
        AppColors(),
        AppBorderRadius(),
        AppSpacing(),
        AppIcons(),
        AppSizes(),
      ]);
}

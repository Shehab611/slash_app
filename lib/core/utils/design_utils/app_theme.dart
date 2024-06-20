import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_sizes.dart';

part 'app_text_styles.dart';

part 'app_colors.dart';

abstract final class AppTheme {
  static ThemeData defaultTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedLabelStyle: AppTextStyles.selectedTextStyle,
          selectedIconTheme:
              const IconThemeData(size: 30, color: AppColors.defaultColor),
          unselectedIconTheme:
              const IconThemeData(size: 30, color: Colors.black),
          unselectedLabelStyle: AppTextStyles.unSelectedTextStyle));
}

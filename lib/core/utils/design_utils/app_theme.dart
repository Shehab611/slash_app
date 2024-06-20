import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_constants/app_constants.dart';

part 'app_sizes.dart';

part 'app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData defaultTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(color: Colors.white,centerTitle: true,),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedLabelStyle: AppTextStyles.selectedTextStyle,
          selectedIconTheme:
              IconThemeData(size: 30, color: AppConstants.defaultColor),
          unselectedIconTheme:
              const IconThemeData(size: 30, color: Colors.black),
          unselectedLabelStyle: AppTextStyles.unSelectedTextStyle));
}

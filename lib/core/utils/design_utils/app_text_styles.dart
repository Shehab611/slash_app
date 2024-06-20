part of 'app_theme.dart';

abstract final class AppTextStyles {
  //#region App Default Text Styles

  static TextStyle defaultTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeDefault,
      fontWeight: FontWeight.w500);

  static TextStyle titleTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeLarge,
      fontWeight: FontWeight.w600);

  static TextStyle itemTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeVeryLarge,
      fontWeight: FontWeight.w600);

  static TextStyle productNameTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeNormal,
      fontWeight: FontWeight.w400);

  static TextStyle productPriceTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeNormal,
      fontWeight: FontWeight.w700);

  //#endregion

  //#region App Bar Text Style
  static TextStyle appBarTitleTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeLarge,
      fontWeight: FontWeight.w700);

//#endregion

  //#region Bottom Navigation Bar Text Styles
  static TextStyle unSelectedTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeDefault,
      fontWeight: FontWeight.w400);

  static TextStyle selectedTextStyle = GoogleFonts.urbanist(
      color: AppColors.defaultColor,
      fontSize: AppSizes.fontSizeDefault,
      fontWeight: FontWeight.w700);
//#endregion
}

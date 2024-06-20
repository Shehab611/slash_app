part of 'app_theme.dart';

abstract final class AppTextStyles {
  //#region App Default Text Styles

  static TextStyle defaultTextStyle = TextStyle(
      color: AppConstants.defaultColor,
      fontSize: AppSizes.fontSizeDefault,
      fontWeight: FontWeight.w500);

  static TextStyle titleTextStyle = TextStyle(
      color: AppConstants.defaultColor,
      fontSize: AppSizes.fontSizeLarge,
      fontWeight: FontWeight.w600);

  static TextStyle itemTextStyle = TextStyle(
      color: AppConstants.defaultColor,
      fontSize: AppSizes.fontSizeVeryLarge,
      fontWeight: FontWeight.w600);

  //#endregion

  //#region App Bar Text Style
  static TextStyle appBarTitleTextStyle = TextStyle(
      color: AppConstants.defaultColor,
      fontSize: AppSizes.fontSizeLarge,
      fontWeight: FontWeight.w700);

//#endregion
}

import 'dart:ui';

abstract final class AppConstants {
//#region Private Variables
  static const String _dummyDataPath = 'assets/dummy_data/dummyData.json';

  static const String _bestSellingPath = 'bestSelling';

  static const String _newArrivalPath = 'newArrival';

  static const String _recommendedPath = 'recommendedForYou';

  static const Color _defaultColor = Color(0xff292929);

//#endregion

//#region Getters
  static String get dummyDataPath => _dummyDataPath;

  static String get bestSellingPath => _bestSellingPath;

  static String get newArrivalPath => _newArrivalPath;

  static String get recommendedPath => _recommendedPath;

  static Color get defaultColor => _defaultColor;
//#endregion
}

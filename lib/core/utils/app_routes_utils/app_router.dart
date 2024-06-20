import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/presentation/views/home_screen.dart';

part 'app_navigator.dart';
part 'app_paths.dart';

abstract final class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    //#region Home Route
    AppPathName.kHomeScreen: (BuildContext context) => const HomeScreen(),
    //#endregion
  };
}

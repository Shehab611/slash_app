import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:slash_app/features/home_page/presentation/views/base_screen.dart';
import 'package:slash_app/features/home_page/presentation/views/see_all_screen.dart';
import 'package:slash_app/features/notifications/presentation/views/notifications_screen.dart';

part 'app_navigator.dart';

part 'app_paths.dart';

abstract final class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    //#region Home Route
    AppPathName.kHomeScreen: (BuildContext context) =>
        BlocProvider(
          create: (context) => BottomNavBarCubit(),
          child: const BaseScreen(),
        ),
    AppPathName.kSeeAllScreen: (BuildContext context) =>
        const SeeAllScreen(),
    AppPathName.kNotificationsScreen: (BuildContext context) =>
        const NotificationsScreen(),
    //#endregion
  };
}

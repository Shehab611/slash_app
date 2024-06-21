import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/service_locator.dart';
import 'package:slash_app/features/home_page/domain/use_cases/get_best_selling.dart';
import 'package:slash_app/features/home_page/domain/use_cases/get_new_arrival.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/best_selling_cubit/best_selling_cubit.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/new_arrival_cubit/new_arrival_cubit.dart';
import 'package:slash_app/features/home_page/presentation/views/base_screen.dart';
import 'package:slash_app/features/home_page/presentation/views/see_all_screen.dart';
import 'package:slash_app/features/notifications/presentation/views/notifications_screen.dart';

part 'app_navigator.dart';

part 'app_paths.dart';

abstract final class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    //#region Home Route
    AppPathName.kHomeScreen: (BuildContext context) =>
        MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BottomNavBarCubit()),
            BlocProvider(create: (context) => BestSellingCubit(GetBestSelling(sl.get()))..getBestSellingData(context)),
            BlocProvider(create: (context) => NewArrivalCubit(GetNewArrival(sl.get()))..getNewArrivalData(context)),

          ],
          child: const BaseScreen(),
        ),
    AppPathName.kSeeAllScreen: (BuildContext context) =>
        const SeeAllScreen(),
    AppPathName.kNotificationsScreen: (BuildContext context) =>
        const NotificationsScreen(),
    //#endregion
  };
}

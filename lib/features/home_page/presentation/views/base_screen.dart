import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/app_bar.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        BottomNavBarCubit cubit = BottomNavBarCubit.get(context);
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 480) {
              return BaseScreenMobileLayout(cubit: cubit);
            } else {
              return BaseScreenWebLayout(cubit: cubit);
            }
          },
        );
      },
    );
  }
}

class BaseScreenMobileLayout extends StatelessWidget {
  const BaseScreenMobileLayout({super.key, required this.cubit});

  final BottomNavBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppDefaultAppBar(isWeb: false,),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: AppColors.defaultColor,
        items: cubit.items,
        currentIndex: cubit.currentIndex,
        onTap: (int index) => cubit.changeIndex = index,
        type: BottomNavigationBarType.fixed,
      ),
      body: cubit.currentScreen,
    );
  }
}

class BaseScreenWebLayout extends StatelessWidget {
  const BaseScreenWebLayout({super.key, required this.cubit});

  final BottomNavBarCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppDefaultAppBar(isWeb: true,),
      body: Row(
        children: [
          RotatedBox(
            quarterTurns: 5,
            child: BottomNavigationBar(
              fixedColor: AppColors.defaultColor,
              items: cubit.rotatedItems,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: cubit.currentIndex,
              onTap: (int index) => cubit.changeIndex = index,
              type: BottomNavigationBarType.fixed,
            ),
          ),
          Expanded(child: cubit.currentScreen)
        ],
      ),
    );
  }
}

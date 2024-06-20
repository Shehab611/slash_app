import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/sections/best_selling_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/categories_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/new_arrival_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/recommended_section.dart';
import 'package:slash_app/features/home_page/presentation/widgets/app_bar.dart';
import 'package:slash_app/features/home_page/presentation/widgets/search_bar.dart';

import '../widgets/offers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const widgets = [
    AppSearchBar(),
    OffersWidget(),
    CategoriesSection(),
    BestSellingSection(),
    NewArrivalSection(),
    RecommendedSection()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppDefaultAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.veryLargePaddingSize),
        child: CustomScrollView(
          slivers: List.generate(
            widgets.length,
            (index) => SliverPadding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: widgets[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

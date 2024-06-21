import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/sections/best_selling_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/categories_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/new_arrival_section.dart';
import 'package:slash_app/features/home_page/presentation/sections/recommended_section.dart';
import 'package:slash_app/features/home_page/presentation/widgets/offers.dart';
import 'package:slash_app/features/home_page/presentation/widgets/search_bar.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.veryLargePaddingSize),
        child: CustomScrollView(
          slivers: List.generate(
            widgets.length,
            (index) => SliverPadding(
              padding: const EdgeInsets.only(
                  top: AppSizes.largePaddingSize),
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

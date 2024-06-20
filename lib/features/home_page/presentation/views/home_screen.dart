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

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppDefaultAppBar(),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: AppSizes.veryLargePaddingSize),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AppSearchBar(),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: OffersWidget(),
              ),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: CategoriesSection(),
              ),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: BestSellingSection(),
              ),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: NewArrivalSection(),
              ),
            ),
            SliverPadding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
              sliver: SliverToBoxAdapter(
                child: RecommendedSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

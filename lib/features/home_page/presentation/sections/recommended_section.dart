import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        headerText: 'Recommended for you',
        onTap: () {
          AppNavigator.navigateToSeeAllScreen(context, 'Recommended');
        },
        products: List.generate(
          5,
          (index) => ProductModel(
              id: index,
              name: 'Name $index',
              price: 29.9 + (index * 2),
              image: 'assets/images/recommended_${index + 1}.png'),
        ));
  }
}

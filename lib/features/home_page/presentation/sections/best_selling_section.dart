import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        headerText: 'Best Selling',
        products: List.generate(
          5,
          (index) => ProductModel(
              id: index,
              name: 'Name $index',
              price: 29.9 + (index * 2),
              image: 'assets/images/best_seller_${index + 1}.png'),
        ));
  }
}

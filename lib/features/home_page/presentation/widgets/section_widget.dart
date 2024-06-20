import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';
import 'package:slash_app/features/home_page/presentation/components/title_row_component.dart';
import 'package:slash_app/features/home_page/presentation/widgets/product_widget.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget(
      {super.key, required this.headerText, required this.products});

  final String headerText;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleRowComponent(
          headerText: headerText,
        ),
        SizedBox(
          height: 210,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.largePaddingSize),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ProductWidget(
                  name: products[index].name,
                  imagePath: products[index].image,
                  price: products[index].price,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    width: 4,
                  ),
              itemCount: products.length),
        )
      ],
    );
  }
}

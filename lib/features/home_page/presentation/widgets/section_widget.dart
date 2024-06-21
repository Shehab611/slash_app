import 'package:flutter/material.dart';
import 'package:slash_app/core/components/custom_components/custom_loader.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/presentation/components/title_row_component.dart';
import 'package:slash_app/features/home_page/presentation/widgets/product_widget.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget(
      {super.key,
      required this.headerText,
      required this.products,
      this.onTap});

  final String headerText;
  final List<Product> products;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TitleRowComponent(
          headerText: headerText,
          onTap: onTap,
        ),
        SizedBox(
          height: size.height * 0.35,
          child: Visibility(
            visible: products.isNotEmpty,
            replacement: const CustomLoader(),
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
                separatorBuilder: (context, index) =>  SizedBox(
                      width: size.width * 0.02,
                    ),
                itemCount: products.length),
          ),
        )
      ],
    );
  }
}

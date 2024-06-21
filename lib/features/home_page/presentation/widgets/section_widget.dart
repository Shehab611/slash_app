import 'package:flutter/material.dart';
import 'package:slash_app/core/components/custom_components/custom_loader.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/presentation/components/title_row_component.dart';
import 'package:slash_app/features/home_page/presentation/widgets/product_widget.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.headerText,
    required this.products,
    this.onTap,
  });

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
        LayoutBuilder(
          builder: (context, constraints) {
            bool isWeb = constraints.maxWidth > 480;
            return SizedBox(
              height: isWeb ? null : size.height * 0.35,
              child: Visibility(
                visible: products.isNotEmpty,
                replacement: const CustomLoader(),
                child: isWeb
                    ? SectionWebBodyWidget(
                        size: size,
                        products: products,
                      )
                    : SectionMobileBodyWidget(
                        size: size,
                        products: products,
                      ),
              ),
            );
          },
        )
      ],
    );
  }
}

class SectionMobileBodyWidget extends StatelessWidget {
  const SectionMobileBodyWidget(
      {super.key, required this.products, required this.size});

  final List<Product> products;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.largePaddingSize),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductWidget(
            name: products[index].name,
            imagePath: products[index].image,
            price: products[index].price,
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              width: size.width * 0.02,
            ),
        itemCount: products.length);
  }
}

class SectionWebBodyWidget extends StatelessWidget {
  const SectionWebBodyWidget(
      {super.key, required this.products, required this.size});

  final List<Product> products;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: size.width / 5,
            childAspectRatio: 0.84,
            mainAxisSpacing: 25,
            crossAxisSpacing: 15),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ProductWidget(
            name: products[index].name,
            imagePath: products[index].image,
            price: products[index].price,
            isWeb: true,
          );
        },
        itemCount: products.length);
  }
}

import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/components/title_row_component.dart';
import 'package:slash_app/features/home_page/presentation/widgets/category_widget.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  static final List<String> categories = [
    'Fashion',
    'Games',
    'Accessories',
    'Books',
    'Artifacts',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TitleRowComponent(
          headerText: 'Categories',
          onTap: () {
            AppNavigator.navigateToSeeAllScreen(context, 'Categories');
          },
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 480) {
              return CategoriesMobileSection(
                size: size,
                categories: categories,
              );
            } else {
              return CategoriesWebSection(
                size: size,
                categories: categories,
              );
            }
          },
        )
      ],
    );
  }
}

class CategoriesMobileSection extends StatelessWidget {
  const CategoriesMobileSection(
      {super.key, required this.size, required this.categories});

  final Size size;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.17,
      child: ListView.separated(
          padding:
              const EdgeInsets.symmetric(vertical: AppSizes.defaultPaddingSize),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryWidget(
              size: size,
              category: categories[index],
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: size.width * 0.02,
              ),
          itemCount: categories.length),
    );
  }
}

class CategoriesWebSection extends StatelessWidget {
  const CategoriesWebSection(
      {super.key, required this.size, required this.categories});

  final Size size;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: size.width / 4),
      itemBuilder: (context, index) {
        return CategoryWidget(
          size: size,
          category: categories[index],
        );
      },
    );
  }
}

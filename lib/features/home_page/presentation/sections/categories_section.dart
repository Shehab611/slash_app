import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/components/title_row_component.dart';

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
        SizedBox(
          height: size.height * 0.17,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.defaultPaddingSize),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.1,
                      backgroundColor: AppColors.defaultColor,
                      child: Image.asset(
                          'assets/images/categories_images/${categories[index]}.png'),
                    ),
                    Text(
                      categories[index],
                      style: AppTextStyles.defaultTextStyle,
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) =>  SizedBox(
                    width: size.width * 0.02,
                  ),
              itemCount: categories.length),
        )
      ],
    );
  }
}

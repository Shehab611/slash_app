import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.size, required this.category});

  final Size size;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: size.width * 0.1,
          backgroundColor: AppColors.defaultColor,
          child: Image.asset('assets/images/categories_images/$category.png'),
        ),
        Text(
          category,
          style: AppTextStyles.defaultTextStyle,
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        )
      ],
    );
  }
}

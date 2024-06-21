import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key,
      required this.size,
      required this.category,
      this.isWeb = false});

  final Size size;
  final String category;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: isWeb
          ? MainAxisAlignment.spaceEvenly
          : MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: isWeb ? size.width * 0.03 : size.width * 0.1,
          backgroundColor: AppColors.defaultColor,
          child: Image.asset('assets/images/categories_images/$category.png',width: 80,height: 80,),
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

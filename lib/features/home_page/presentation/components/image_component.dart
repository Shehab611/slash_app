import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent(
      {super.key, required this.imagePath, required this.isWeb});

  final String imagePath;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.defaultPaddingSize),
      clipBehavior: Clip.hardEdge,
      child: Center(
        child: Image.asset(
          imagePath,
          height: isWeb ? size.width * 0.15 : size.height * 0.2,
          width: isWeb ? size.width * 0.1 : size.width * 0.38,
          fit: isWeb ? BoxFit.contain : BoxFit.contain,
        ),
      ),
    );
  }
}

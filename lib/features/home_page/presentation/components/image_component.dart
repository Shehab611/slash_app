import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.defaultPaddingSize),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        imagePath,
        height: size.height * 0.2,
        width: size.width * 0.38,
        fit: BoxFit.contain,
      ),
    );
  }
}

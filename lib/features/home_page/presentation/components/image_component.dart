import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.defaultPaddingSize),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        imagePath,
        width: 124,
        height: 116,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

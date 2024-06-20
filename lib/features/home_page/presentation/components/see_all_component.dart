import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class SeeAllComponent extends StatelessWidget {
  const SeeAllComponent({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            'See all',
            style: AppTextStyles.defaultTextStyle,
          ),
          Container(
            margin: const EdgeInsets.only(left: AppSizes.defaultPaddingSize),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.fillColor),
            child: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppColors.defaultColor,
            ),
          )
        ],
      ),
    );
  }
}

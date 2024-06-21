import 'package:flutter/material.dart';
import 'package:slash_app/core/components/custom_components/custom_text_field.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTextField(
            hintText: 'Search here..',
            prefixIcon: Icons.search_outlined,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: AppSizes.defaultPaddingSize),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.defaultPaddingSize),
              color: AppColors.fillColor,
            ),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.tune_rounded,
                  color: AppColors.searchIconColor,
                )),
          ),
        )
      ],
    );
  }
}

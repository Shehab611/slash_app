import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favourites Screen',
          style: AppTextStyles.defaultTextStyle,
        ),
      ),
    );
  }
}

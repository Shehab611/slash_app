import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Screen',
          style: AppTextStyles.defaultTextStyle,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MyCart Screen',
          style: AppTextStyles.defaultTextStyle,
        ),
      ),
    );
  }
}

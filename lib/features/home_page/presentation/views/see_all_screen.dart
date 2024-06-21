import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final String screenName =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Text(
          'See All $screenName Screen',
          style: AppTextStyles.defaultTextStyle,
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        ),
      ),
    );
  }
}

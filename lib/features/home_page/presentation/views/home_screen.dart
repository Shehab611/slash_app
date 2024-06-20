import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/presentation/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppDefaultAppBar(),
    );
  }
}

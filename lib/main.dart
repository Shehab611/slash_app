import 'package:flutter/material.dart';
import 'package:slash_app/core/service_locator.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServicesLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Slash App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      routes: AppRouter.routes,
      initialRoute: AppPathName.kHomeScreen,
    );
  }
}

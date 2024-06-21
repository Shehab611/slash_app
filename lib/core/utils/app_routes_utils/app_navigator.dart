part of 'app_router.dart';

abstract final class AppNavigator {
  static navigateToSeeAllScreen(BuildContext context, String screenName) {
    Navigator.pushNamed(context, AppPathName.kSeeAllScreen,
        arguments: screenName);
  }

  static navigateToNotificationsScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppPathName.kNotificationsScreen,
    );
  }
}

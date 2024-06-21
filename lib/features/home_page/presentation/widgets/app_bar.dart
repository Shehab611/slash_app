import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class AppDefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppDefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      leading: Center(
        child: Text(
          'Slash.',
          style: AppTextStyles.titleTextStyle,
        ),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(AppSizes.defaultPaddingSize),
            child: Icon(
              Icons.location_pin,
              color: AppColors.defaultColor,
            ),
          ),
          SizedBox(
            width: 95,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 'Nasr City',
                    child: Text(
                      'Nasr City Cairo',
                      style: AppTextStyles.defaultTextStyle,
                    ),
                  )
                ],
                onChanged: (x) {},
                value: 'Nasr City',
                isExpanded: true,
              ),
            ),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: AppSizes.defaultPaddingSize),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                onPressed: () {
                  AppNavigator.navigateToNotificationsScreen(context);
                },
                icon: const Icon(Icons.notifications_none),
                iconSize: 30,
              ),
              const Positioned(
                right: 15,
                top: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';

class AppDefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppDefaultAppBar({super.key, required this.isWeb});

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: size.width * 0.29,
      leading: Center(
        child: Text(
          'Slash.',
          style: AppTextStyles.titleTextStyle,
          textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
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
            width: isWeb ? size.width * 0.2 : size.width * 0.27,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: 'Nasr City',
                    child: Text(
                      'Nasr City Cairo',
                      style: AppTextStyles.defaultTextStyle,
                      textScaler:
                          TextScaler.linear(ScaleSize.textScaleFactor(context)),
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
                iconSize: isWeb ? size.width * 0.04 : size.width * 0.09,
              ),
              Positioned(
                right: 15,
                top: 15,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: isWeb ?size.width * 0.007: size.width * 0.014,
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

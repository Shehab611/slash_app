import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/components/image_component.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.price,
      this.isWeb = false});

  final String name, imagePath;
  final num price;
  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        SizedBox(
          height: isWeb ? size.width * 0.3 : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageComponent(imagePath: imagePath,isWeb:isWeb ,),
              Text(
                name,
                style: AppTextStyles.productNameTextStyle,
                textScaler:
                    TextScaler.linear(ScaleSize.textScaleFactor(context)),
              ),
              Row(
                mainAxisAlignment: isWeb
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'EGP $price',
                    style: AppTextStyles.productPriceTextStyle,
                    textScaler:
                        TextScaler.linear(ScaleSize.textScaleFactor(context)),
                  ),
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppSizes.defaultPaddingSize),
                    child: CircleAvatar(
                      radius: isWeb ? size.width * 0.01 : size.width * 0.024,
                      backgroundImage: AssetImage(imagePath),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                            AppColors.defaultColor)),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: -5,
          top: -5,
          child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: isWeb ? size.width * 0.02 : size.width * 0.05,
                backgroundColor: AppColors.fillColor,
                child: Icon(
                  Icons.favorite_border,
                  size: isWeb ? size.width * 0.03 : size.width * 0.06,
                  color: AppColors.defaultColor,
                ),
              )),
        )
      ],
    );
  }
}

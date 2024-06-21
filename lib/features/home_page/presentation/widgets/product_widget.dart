import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:slash_app/features/home_page/presentation/components/image_component.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.name,
      required this.imagePath,
      required this.price});

  final String name, imagePath;
  final num price;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageComponent(imagePath: imagePath),
            Text(
              name,
              style: AppTextStyles.productNameTextStyle,
              textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'EGP $price',
                  style: AppTextStyles.productPriceTextStyle,
                  textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.defaultPaddingSize),
                  child: CircleAvatar(
                    radius: size.width * 0.024,
                    child: Image.asset(imagePath),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: size.width * 0.044,
                  ),
                  style: const ButtonStyle(
                      maximumSize: WidgetStatePropertyAll(Size(30, 30)),
                      minimumSize: WidgetStatePropertyAll(Size(20, 20)),
                      backgroundColor: WidgetStatePropertyAll<Color>(
                          AppColors.defaultColor)),
                )
              ],
            ),
          ],
        ),
        Positioned(
          right: -5,
          top: -5,
          child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: size.width * 0.05,
                backgroundColor: AppColors.fillColor,
                child: Icon(
                  Icons.favorite_border,
                  size: size.width * 0.06,
                  color: AppColors.defaultColor,
                ),
              )),
        )
      ],
    );
  }
}

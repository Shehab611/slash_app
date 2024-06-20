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
    return SizedBox(
      width: 124,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageComponent(imagePath: imagePath),
          Text(
            'Name 1',
            style: AppTextStyles.productNameTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'EGP $price',
                style: AppTextStyles.productPriceTextStyle,
              ),
              const Spacer(),
              CircleAvatar(
                radius: 8,
                child: Image.asset(imagePath),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 15,
                ),
                style: const ButtonStyle(
                    maximumSize: WidgetStatePropertyAll(Size(30, 30)),
                    minimumSize: WidgetStatePropertyAll(Size(20, 20)),
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(AppColors.defaultColor)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

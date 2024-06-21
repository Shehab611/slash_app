import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/design_utils/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 0.9,
              autoPlay: true,
              aspectRatio: constraints.maxWidth > 480 ? 9 : 2,
              animateToClosest: true,
              enlargeCenterPage: true,
              disableCenter: true,
              padEnds: false,
              onPageChanged: (index, reason) => setState(() {
                itemIndex = index;
              }),
            ),
            itemCount: 2,
            itemBuilder: (context, index, _) {
              return ClipRRect(
                borderRadius:
                    BorderRadius.circular(AppSizes.defaultPaddingSize),
                child: Image.asset(
                  'assets/images/carousel_image.png',
                  fit: constraints.maxWidth > 480 ? BoxFit.fill : BoxFit.cover,
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppSizes.defaultPaddingSize),
            child: AnimatedSmoothIndicator(
              count: 2,
              effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.defaultColor,
                  expansionFactor: 2,
                  dotHeight: constraints.maxWidth > 480
                      ? size.width * 0.01
                      : size.width * 0.015,
                  dotColor: AppColors.fillColor),
              activeIndex: itemIndex,
            ),
          )
        ],
      );
    });
  }
}

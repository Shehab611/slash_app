import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        headerText: 'New Arrival',
        products: List.generate(
          5,
          (index) => ProductModel(
              id: index,
              name: 'Name $index',
              price: 29.9 + (index * 2),
              image: 'assets/images/new_arrival_${index + 1}.png'),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/components/custom_loader.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/best_selling_cubit/best_selling_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellingCubit, BestSellingState>(
      builder: (context, state) {
        if (state is BestSellingGetDataSuccessState) {
          return SectionWidget(
              headerText: 'Best Selling',
              onTap: () {
                AppNavigator.navigateToSeeAllScreen(context, 'Best Selling');
              },
              products: state.data);
        } else if (state is BestSellingGetDataFailedState) {
          return Center(child: Text(state.error));
        }
        return const CustomLoader();
      },
    );
  }
}

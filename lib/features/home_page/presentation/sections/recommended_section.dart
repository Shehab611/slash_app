import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/components/custom_loader.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/recommended_cubit/recommended_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedCubit, RecommendedState>(
      builder: (context, state) {
        if (state is RecommendedGetDataSuccessState) {
          return SectionWidget(
              headerText: 'Recommended For You',
              onTap: () {
                AppNavigator.navigateToSeeAllScreen(context, 'Recommended');
              },
              products: state.data);
        } else if (state is RecommendedGetDataFailedState) {
          return Center(child: Text(state.error));
        }
        return const CustomLoader();
      },
    );
  }
}

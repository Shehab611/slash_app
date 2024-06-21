import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/core/components/custom_loader.dart';
import 'package:slash_app/core/utils/app_routes_utils/app_router.dart';
import 'package:slash_app/features/home_page/presentation/view_model_manger/new_arrival_cubit/new_arrival_cubit.dart';
import 'package:slash_app/features/home_page/presentation/widgets/section_widget.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArrivalCubit, NewArrivalState>(
      builder: (context, state) {
        if (state is NewArrivalGetDataSuccessState) {
          return SectionWidget(
              headerText: 'New Arrival',
              onTap: () {
                AppNavigator.navigateToSeeAllScreen(context, 'New Arrival');
              },
              products: state.data);
        } else if (state is NewArrivalGetDataFailedState) {
          return Center(child: Text(state.error));
        }
        return const CustomLoader();
      }

    );
  }
}

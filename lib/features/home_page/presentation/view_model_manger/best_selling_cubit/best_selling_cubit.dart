import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/use_cases/get_best_selling.dart';

part 'best_selling_state.dart';

class BestSellingCubit extends Cubit<BestSellingState> {
  BestSellingCubit(this.getBestSelling) : super(const BestSellingInitial());

  //#region Private Variables
  final GetBestSelling getBestSelling;

//#endregion

  //#region Private Methods
  Future<void> _getBestSelling(BuildContext context) async {
    emit(const BestSellingGetDataLoadingState());
    final response = await getBestSelling.call(context);
    if (response.error == null) {
      emit(BestSellingGetDataSuccessState(response.data!));
    } else {
      emit(BestSellingGetDataFailedState(response.error!));
    }
  }

//#endregion

//#region Public Methods
  void getBestSellingData(BuildContext context) async {
    await _getBestSelling(context);
  }

//#endregion
}

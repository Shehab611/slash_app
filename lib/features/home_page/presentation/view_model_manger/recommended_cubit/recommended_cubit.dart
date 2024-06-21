import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/use_cases/get_recommended.dart';

part 'recommended_state.dart';

class RecommendedCubit extends Cubit<RecommendedState> {
  RecommendedCubit(this.getRecommended) : super(const RecommendedInitial());

  //#region Private Variables
  final GetRecommended getRecommended;

//#endregion

  //#region Private Methods
  Future<void> _getRecommended(BuildContext context) async {
    emit(const RecommendedGetDataLoadingState());
    final response = await getRecommended.call(context);
    if (response.error == null) {
      emit(RecommendedGetDataSuccessState(response.data!));
    } else {
      emit(RecommendedGetDataFailedState(response.error!));
    }
  }

//#endregion

//#region Public Methods
  void getRecommendedData(BuildContext context) async {
    await _getRecommended(context);
  }

//#endregion
}

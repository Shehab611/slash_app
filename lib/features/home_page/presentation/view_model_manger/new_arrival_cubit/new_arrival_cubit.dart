import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/use_cases/get_new_arrival.dart';

part 'new_arrival_state.dart';

class NewArrivalCubit extends Cubit<NewArrivalState> {
  NewArrivalCubit(this.getNewArrival) : super(const NewArrivalInitial());

  //#region Private Variables
  final GetNewArrival getNewArrival;

//#endregion

  //#region Private Methods
  Future<void> _getNewArrival(BuildContext context) async {
    emit(const NewArrivalGetDataLoadingState());
    final response = await getNewArrival.call(context);
    if (response.error == null) {
      emit(NewArrivalGetDataSuccessState(response.data!));
    } else {
      emit(NewArrivalGetDataFailedState(response.error!));
    }
  }

//#endregion

//#region Public Methods
  void getNewArrivalData(BuildContext context) async {
    await _getNewArrival(context);
  }

//#endregion
}

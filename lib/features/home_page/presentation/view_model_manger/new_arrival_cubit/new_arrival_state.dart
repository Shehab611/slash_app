part of 'new_arrival_cubit.dart';

sealed class NewArrivalState extends Equatable {
  const NewArrivalState();
}

final class NewArrivalInitial extends NewArrivalState {
  const NewArrivalInitial();

  @override
  List<Object> get props => [];
}

final class NewArrivalGetDataLoadingState extends NewArrivalState {
  const NewArrivalGetDataLoadingState();

  @override
  List<Object> get props => [];
}

final class NewArrivalGetDataSuccessState extends NewArrivalState {
  const NewArrivalGetDataSuccessState(this.data);

  final List<Product> data;

  @override
  List<Object> get props => [];
}

final class NewArrivalGetDataFailedState extends NewArrivalState {
  const NewArrivalGetDataFailedState(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

part of 'best_selling_cubit.dart';

sealed class BestSellingState extends Equatable {
  const BestSellingState();
}

final class BestSellingInitial extends BestSellingState {
  const BestSellingInitial();
  @override
  List<Object> get props => [];
}
final class BestSellingGetDataLoadingState extends BestSellingState {
  const BestSellingGetDataLoadingState();
  @override
  List<Object> get props => [];
}final class BestSellingGetDataSuccessState extends BestSellingState {
  const BestSellingGetDataSuccessState(this.data);
  final List<Product> data;
  @override
  List<Object> get props => [];
}
final class BestSellingGetDataFailedState extends BestSellingState {
  const BestSellingGetDataFailedState(this.error);
  final String error;
  @override
  List<Object> get props => [];
}

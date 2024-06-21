part of 'recommended_cubit.dart';

sealed class RecommendedState extends Equatable {
  const RecommendedState();
}

final class RecommendedInitial extends RecommendedState {
  const RecommendedInitial();

  @override
  List<Object> get props => [];
}

final class RecommendedGetDataLoadingState extends RecommendedState {
  const RecommendedGetDataLoadingState();

  @override
  List<Object> get props => [];
}

final class RecommendedGetDataSuccessState extends RecommendedState {
  const RecommendedGetDataSuccessState(this.data);

  final List<Product> data;

  @override
  List<Object> get props => [];
}

final class RecommendedGetDataFailedState extends RecommendedState {
  const RecommendedGetDataFailedState(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

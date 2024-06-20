import 'package:slash_app/core/responses/data_response.dart';

abstract interface class BaseUseCase<T> {
  Future<Response<T>> call();
}

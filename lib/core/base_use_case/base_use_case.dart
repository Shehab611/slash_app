import 'package:slash_app/core/responses/data_response.dart';

abstract class BaseUseCase<T> {
  Future<Response<T>> call();
}

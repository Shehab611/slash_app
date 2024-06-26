import 'package:slash_app/core/responses/data_response.dart';
import 'package:flutter/material.dart';

abstract interface class BaseUseCaseInterface<T> {
  Future<Response<T>> call(BuildContext context);
}

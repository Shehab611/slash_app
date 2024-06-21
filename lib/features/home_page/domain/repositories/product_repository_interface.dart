import 'package:flutter/material.dart';
import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';

abstract interface class ProductsRepositoryInterface {
  Future<Response<List<Product>>> getBestSelling(BuildContext context);

  Future<Response<List<Product>>> getNewArrival(BuildContext context);

  Future<Response<List<Product>>> getRecommended(BuildContext context);
}

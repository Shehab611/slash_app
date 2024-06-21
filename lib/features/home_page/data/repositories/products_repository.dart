import 'package:flutter/material.dart';
import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/data/sources/product_local_data_source.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/repositories/product_repository_interface.dart';

final class ProductsRepositoryImpl implements ProductsRepositoryInterface {
  final ProductLocalDataSourceInterface _dataSource;

  const ProductsRepositoryImpl(this._dataSource);

  @override
  Future<Response<List<Product>>> getBestSelling(BuildContext context) async {
    try {
      final data = await _dataSource.getBestSelling(context);
      return Response.withSuccess(data);
    } catch (e) {
      return Response.withError(e.toString());
    }
  }

  @override
  Future<Response<List<Product>>> getNewArrival(BuildContext context) async {
    try {
      final data = await _dataSource.getNewArrival(context);
      return Response.withSuccess(data);
    } catch (e) {
      return Response.withError(e.toString());
    }
  }

  @override
  Future<Response<List<Product>>> getRecommended(BuildContext context) async {
    try {
      final data = await _dataSource.getRecommended(context);
      return Response.withSuccess(data);
    } catch (e) {
      return Response.withError(e.toString());
    }
  }
}

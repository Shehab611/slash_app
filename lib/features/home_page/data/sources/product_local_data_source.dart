import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:slash_app/core/utils/app_constants/app_constants.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';

abstract interface class ProductLocalDataSourceInterface {
  Future<List<ProductModel>> getBestSelling(BuildContext context);

  Future<List<ProductModel>> getNewArrival(BuildContext context);

  Future<List<ProductModel>> getRecommended(BuildContext context);
}

final class ProductLocalDataSourceImpl implements ProductLocalDataSourceInterface {
  dynamic _readJson(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString(AppConstants.dummyDataPath);
    return jsonDecode(data);
  }

  Future<List<ProductModel>> _getProducts(
      BuildContext context, String key) async {
    final jsonResult = await _readJson(context);
    final List<ProductModel> products = [];
    for (var json in jsonResult[key]) {
      products.add(ProductModel.fromJson(json));
    }
    return products;
  }

  @override
  Future<List<ProductModel>> getBestSelling(BuildContext context) async {
    return await _getProducts(context, AppConstants.bestSellingPath);
  }

  @override
  Future<List<ProductModel>> getNewArrival(BuildContext context) async {
    return await _getProducts(context, AppConstants.newArrivalPath);
  }

  @override
  Future<List<ProductModel>> getRecommended(BuildContext context) async {
    return await _getProducts(context, AppConstants.recommendedPath);
  }
}

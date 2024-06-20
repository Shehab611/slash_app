import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:slash_app/features/home_page/data/models/product_model.dart';

abstract interface class BaseProductLocalDataSource {
  Future<List<ProductModel>> getBestSelling(BuildContext context);

  Future<List<ProductModel>> getNewArrival(BuildContext context);

  Future<List<ProductModel>> getRecommended(BuildContext context);
}

final class ProductLocalDataSource implements BaseProductLocalDataSource {
  dynamic _readJson(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/dummy_data/dummyData.json");
    return jsonDecode(data);
  }

  List<ProductModel> _getProducts(BuildContext context, String key) {
    final jsonResult = _readJson(context);
    final List<ProductModel> products = [];
    for (var json in jsonResult[key]) {
      products.add(ProductModel.fromJson(json));
    }
    return products;
  }

  @override
  Future<List<ProductModel>> getBestSelling(BuildContext context) async {
    return _getProducts(context, 'bestSelling');
  }

  @override
  Future<List<ProductModel>> getNewArrival(BuildContext context) async {
    return _getProducts(context, 'newArrival');
  }

  @override
  Future<List<ProductModel>> getRecommended(BuildContext context) async {
    return _getProducts(context, 'recommendedForYou');
  }
}

import 'package:flutter/material.dart';
import 'package:slash_app/core/base_use_case/base_use_case.dart';
import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/repositories/product_repository_interface.dart';

final class GetRecommended implements BaseUseCase<List<Product>> {
  final BaseProductsRepository productsRepository;

  const GetRecommended(this.productsRepository);

  @override
  Future<Response<List<Product>>> call(BuildContext context) async {
    return await productsRepository.getRecommended(context);
  }
}

import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';

abstract interface class ProductRepository {
  Future<Response<List<Product>>> getBestSelling();

  Future<Response<List<Product>>> getNewArrival();

  Future<Response<List<Product>>> getRecommended();
}

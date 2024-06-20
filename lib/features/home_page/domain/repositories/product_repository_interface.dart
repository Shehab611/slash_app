import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';

abstract interface class ProductRepository {
  Future<Response<Product>> getBestSelling();

  Future<Response<Product>> getNewArrival();

  Future<Response<Product>> getRecommended();
}

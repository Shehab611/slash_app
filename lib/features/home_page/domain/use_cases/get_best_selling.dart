import 'package:slash_app/core/base_use_case/base_use_case.dart';
import 'package:slash_app/core/responses/data_response.dart';
import 'package:slash_app/features/home_page/domain/entities/product.dart';
import 'package:slash_app/features/home_page/domain/repositories/product_repository_interface.dart';

final class GetBestSelling implements BaseUseCase<List<Product>> {
  final ProductRepository productsRepository;

  const GetBestSelling(this.productsRepository);

  @override
  Future<Response<List<Product>>> call() async {
    return await productsRepository.getBestSelling();
  }
}

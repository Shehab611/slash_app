import 'package:get_it/get_it.dart';
import 'package:slash_app/features/home_page/data/repositories/products_repository.dart';
import 'package:slash_app/features/home_page/data/sources/product_local_data_source.dart';
import 'package:slash_app/features/home_page/domain/repositories/product_repository_interface.dart';

final sl = GetIt.instance;

Future<void> initServicesLocator() async {
  //#region Repos
  sl.registerLazySingleton<ProductsRepositoryInterface>(
      () => ProductsRepositoryImpl(sl.get()));
  //#endregion

  //#region Data Sources
  sl.registerLazySingleton<ProductLocalDataSourceInterface>(
      () => ProductLocalDataSourceImpl());
  //#endregion
}

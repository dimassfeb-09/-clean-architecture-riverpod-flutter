import 'package:get_it/get_it.dart';
import 'package:teknikal_2/core/network/dio_client.dart';
import 'package:teknikal_2/features/auth/data/datasources/auth_datasource.dart';
import 'package:teknikal_2/features/auth/data/repositories/auth_repository.dart';
import 'package:teknikal_2/features/auth/domain/repositories/auth_repository.dart';
import 'package:teknikal_2/features/auth/domain/usecases/login_usecase.dart';
import 'package:teknikal_2/features/product/data/datasources/products_datasource.dart';
import 'package:teknikal_2/features/product/data/repositories/product_repository_impl.dart';
import 'package:teknikal_2/features/product/domain/repositories/product_repository.dart';
import 'package:teknikal_2/features/product/domain/usecases/get_product_detail_usecase.dart';
import 'package:teknikal_2/features/product/domain/usecases/get_products_usecase.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerLazySingleton<DioClient>(() => DioClient());

  getIt.registerLazySingleton<ProductsDataSource>(
    () => ProductsDataSourceImpl(dioClient: getIt()),
  );

  getIt.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(productsDataSource: getIt()),
  );

  getIt.registerLazySingleton<GetProductsUsecase>(
    () => GetProductsUsecase(productRepository: getIt()),
  );

  getIt.registerLazySingleton<GetProductDetailUsecase>(
    () => GetProductDetailUsecase(productRepository: getIt()),
  );

  // Auth Dependencies
  getIt.registerLazySingleton<AuthDataSource>(
    () => AuthDataSourceImpl(dioClient: getIt()),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(authDatasource: getIt()),
  );

  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCaseImpl(authRepository: getIt()),
  );
}

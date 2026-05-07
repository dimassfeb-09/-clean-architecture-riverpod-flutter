import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:teknikal_2/di/dependency_injection.dart';
import 'package:teknikal_2/features/product/domain/entities/product_entity.dart';
import 'package:teknikal_2/features/product/domain/entities/products_entity.dart';
import 'package:teknikal_2/features/product/domain/usecases/get_product_detail_usecase.dart';
import 'package:teknikal_2/features/product/domain/usecases/get_products_usecase.dart';

final productProvider = FutureProvider.autoDispose<Products>((ref) async {
  return await getIt<GetProductsUsecase>().call();
});

final productDetailProvider = FutureProvider.family<Product, int>((
  ref,
  id,
) async {
  return await getIt<GetProductDetailUsecase>().call(id);
});

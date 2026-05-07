import 'package:teknikal_2/features/product/domain/entities/products_entity.dart';
import 'package:teknikal_2/features/product/domain/repositories/product_repository.dart';

class GetProductsUsecase {
  final ProductRepository productRepository;

  GetProductsUsecase({required this.productRepository});

  Future<Products> call() async {
    return await productRepository.getProducts();
  }
}

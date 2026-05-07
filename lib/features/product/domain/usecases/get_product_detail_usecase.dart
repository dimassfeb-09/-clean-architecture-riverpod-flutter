import 'package:teknikal_2/features/product/domain/entities/product_entity.dart';
import 'package:teknikal_2/features/product/domain/repositories/product_repository.dart';

class GetProductDetailUsecase {
  final ProductRepository productRepository;

  GetProductDetailUsecase({required this.productRepository});

  Future<Product> call(int id) async {
    return await productRepository.getProductDetail(id);
  }
}

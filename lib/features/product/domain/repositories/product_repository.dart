import 'package:teknikal_2/features/product/domain/entities/product_entity.dart';
import 'package:teknikal_2/features/product/domain/entities/products_entity.dart';

abstract class ProductRepository {
  Future<Products> getProducts();
  Future<Product> getProductDetail(int id);
}

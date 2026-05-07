import 'package:teknikal_2/features/product/domain/entities/products_entity.dart';
import 'package:teknikal_2/features/product/data/datasources/products_datasource.dart';
import 'package:teknikal_2/features/product/domain/entities/product_entity.dart';
import 'package:teknikal_2/features/product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductsDataSource productsDataSource;

  ProductRepositoryImpl({required this.productsDataSource});
  @override
  Future<Products> getProducts() async {
    return await productsDataSource.getProducts();
  }

  @override
  Future<Product> getProductDetail(int id) async {
    return await productsDataSource.getProductDetail(id);
  }
}

import 'package:dio/dio.dart';
import 'package:teknikal_2/core/constants/app_api.dart';
import 'package:teknikal_2/core/errors/exceptions.dart';
import 'package:teknikal_2/core/network/dio_client.dart';
import 'package:teknikal_2/features/product/data/models/product_model.dart';
import 'package:teknikal_2/features/product/data/models/products_model.dart';

abstract class ProductsDataSource {
  Future<ProductsModel> getProducts();
  Future<ProductModel> getProductDetail(int id);
}

class ProductsDataSourceImpl implements ProductsDataSource {
  final DioClient dioClient;

  ProductsDataSourceImpl({required this.dioClient});

  @override
  Future<ProductsModel> getProducts() async {
    try {
      final response = await dioClient.dio.get(AppApi.products);
      return ProductsModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? 'Gagal mengambil produk');
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<ProductModel> getProductDetail(int id) async {
    try {
      final response = await dioClient.dio.get('${AppApi.productDetail}/$id');
      return ProductModel.fromJson(response.data);
    } on DioException catch (e) {
      throw ServerException(
        message: e.message ?? 'Gagal mengambil detail produk',
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}

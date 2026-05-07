import 'package:teknikal_2/features/product/data/models/product_model.dart';
import 'package:teknikal_2/features/product/domain/entities/products_entity.dart';

class ProductsModel extends Products {
  ProductsModel({
    required super.products,
    required super.total,
    required super.skip,
    required super.limit,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'],
      skip: json['skip'],
      limit: json['limit'],
    );
  }
}

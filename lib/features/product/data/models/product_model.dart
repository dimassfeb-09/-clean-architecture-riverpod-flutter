import 'package:teknikal_2/features/product/data/models/dimensions_model.dart';
import 'package:teknikal_2/features/product/data/models/meta_model.dart';
import 'package:teknikal_2/features/product/data/models/review_model.dart';
import 'package:teknikal_2/features/product/domain/entities/product_entity.dart';

class ProductModel extends Product {
  ProductModel({
    super.id,
    super.title,
    super.description,
    super.category,
    super.price,
    super.discountPercentage,
    super.rating,
    super.stock,
    super.tags,
    super.brand,
    super.sku,
    super.weight,
    DimensionsModel? super.dimensions,
    super.warrantyInformation,
    super.shippingInformation,
    super.availabilityStatus,
    List<ReviewModel>? super.reviews,
    super.returnPolicy,
    super.minimumOrderQuantity,
    MetaModel? super.meta,
    super.images,
    super.thumbnail,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      stock: json['stock'],
      tags: json['tags']?.map<String>((e) => e.toString()).toList(),
      brand: json['brand'],
      sku: json['sku'],
      weight: json['weight'],
      dimensions: json['dimensions'] != null
          ? DimensionsModel.fromJson(json['dimensions'])
          : null,
      warrantyInformation: json['warrantyInformation'],
      shippingInformation: json['shippingInformation'],
      availabilityStatus: json['availabilityStatus'],
      reviews: json['reviews']
          ?.map<ReviewModel>((e) => ReviewModel.fromJson(e))
          .toList(),
      returnPolicy: json['returnPolicy'],
      minimumOrderQuantity: json['minimumOrderQuantity'],
      meta: json['meta'] != null ? MetaModel.fromJson(json['meta']) : null,
      images: json['images']?.map<String>((e) => e.toString()).toList(),
      thumbnail: json['thumbnail'],
    );
  }
}

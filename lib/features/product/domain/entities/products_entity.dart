import 'package:teknikal_2/features/product/data/models/product_model.dart';

class Products {
  List<ProductModel>? products;
  int? total;
  int? skip;
  int? limit;

  Products({this.products, this.total, this.skip, this.limit});
}

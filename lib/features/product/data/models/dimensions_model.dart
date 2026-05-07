import 'package:teknikal_2/features/product/domain/entities/dimentions_entity.dart';

class DimensionsModel extends Dimensions {
  DimensionsModel({super.width, super.height, super.depth});

  factory DimensionsModel.fromJson(Map<String, dynamic> json) =>
      DimensionsModel(
        width: json['width'],
        height: json['height'],
        depth: json['depth'],
      );

  Map<String, dynamic> toJson() => {
    'width': width,
    'height': height,
    'depth': depth,
  };
}

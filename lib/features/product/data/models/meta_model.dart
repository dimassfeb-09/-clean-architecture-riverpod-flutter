import 'package:teknikal_2/features/product/domain/entities/meta_entity.dart';

class MetaModel extends Meta {
  MetaModel({super.createdAt, super.updatedAt, super.barcode, super.qrCode});

  factory MetaModel.fromJson(Map<String, dynamic> json) => MetaModel(
    createdAt: json['createdAt'] != null
        ? DateTime.parse(json['createdAt'])
        : null,
    updatedAt: json['updatedAt'] != null
        ? DateTime.parse(json['updatedAt'])
        : null,
    barcode: json['barcode'],
    qrCode: json['qrCode'],
  );

  Map<String, dynamic> toJson() => {
    'createdAt': createdAt?.toIso8601String(),
    'updatedAt': updatedAt?.toIso8601String(),
    'barcode': barcode,
    'qrCode': qrCode,
  };
}

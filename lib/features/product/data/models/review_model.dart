import 'package:teknikal_2/features/product/domain/entities/review_entity.dart';

class ReviewModel extends Review {
  ReviewModel({
    super.rating,
    super.comment,
    super.date,
    super.reviewerName,
    super.reviewerEmail,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
    rating: json['rating'],
    comment: json['comment'],
    date: json['date'] != null ? DateTime.parse(json['date']) : null,
    reviewerName: json['reviewerName'],
    reviewerEmail: json['reviewerEmail'],
  );

  Map<String, dynamic> toJson() => {
    'rating': rating,
    'comment': comment,
    'date': date?.toIso8601String(),
    'reviewerName': reviewerName,
    'reviewerEmail': reviewerEmail,
  };
}

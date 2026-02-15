
import 'package:json_annotation/json_annotation.dart';

import '../../domain/model/reviews.dart';
part 'reviews.g.dart';

@JsonSerializable()
class ReviewsDto {
  @JsonKey(name: "rating")
  final int? rating;
  @JsonKey(name: "comment")
  final String? comment;
  @JsonKey(name: "date")
  final String? date;
  @JsonKey(name: "reviewerName")
  final String? reviewerName;
  @JsonKey(name: "reviewerEmail")
  final String? reviewerEmail;

  ReviewsDto ({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,
  });

  factory ReviewsDto.fromJson(Map<String, dynamic> json) {
    return _$ReviewsDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ReviewsDtoToJson(this);
  }
  Reviews toReviews(){
    return Reviews(
      rating: rating,
      comment: comment,
      date: date,
      reviewerName: reviewerName,
      reviewerEmail: reviewerEmail,
    );
  }
}

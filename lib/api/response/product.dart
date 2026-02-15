import 'package:flutter_advanced_bootcamp/api/response/reviews.dart';
import 'package:flutter_advanced_bootcamp/domain/model/product.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dimensions.dart';
import 'meta.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductDto {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "category")
  final String? category;
  @JsonKey(name: "price")
  final double? price;
  @JsonKey(name: "discountPercentage")
  final double? discountPercentage;
  @JsonKey(name: "rating")
  final double? rating;
  @JsonKey(name: "stock")
  final int? stock;
  @JsonKey(name: "tags")
  final List<String>? tags;
  @JsonKey(name: "brand")
  final String? brand;
  @JsonKey(name: "sku")
  final String? sku;
  @JsonKey(name: "weight")
  final int? weight;
  @JsonKey(name: "dimensions")
  final DimensionsDto? dimensions;
  @JsonKey(name: "warrantyInformation")
  final String? warrantyInformation;
  @JsonKey(name: "shippingInformation")
  final String? shippingInformation;
  @JsonKey(name: "availabilityStatus")
  final String? availabilityStatus;
  @JsonKey(name: "reviews")
  final List<ReviewsDto>? reviews;
  @JsonKey(name: "returnPolicy")
  final String? returnPolicy;
  @JsonKey(name: "minimumOrderQuantity")
  final int? minimumOrderQuantity;
  @JsonKey(name: "meta")
  final MetaDto? meta;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  ProductDto ({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) {
    return _$ProductDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductDtoToJson(this);
  }
  Product toProduct(){
    return Product(
      id: id,
      title: title,
      description: description,
      category: category,
      price: price,
      discountPercentage: discountPercentage,
      rating: rating,
      stock: stock,
      tags: tags,
      brand: brand,
      sku: sku,
      weight: weight,
      dimensions: dimensions?.toDimensions(),
      warrantyInformation: warrantyInformation,
      shippingInformation: shippingInformation,
      availabilityStatus: availabilityStatus,
      reviews: reviews?.map((e) => e.toReviews()).toList(),
      returnPolicy: returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity,
      meta: meta?.toMeta(),
      images: images,
      thumbnail: thumbnail,

    );
  }

}



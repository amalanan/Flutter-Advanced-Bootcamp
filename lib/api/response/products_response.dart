import 'package:flutter_advanced_bootcamp/api/response/product.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/model/product.dart';

part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  @JsonKey(name: "products")
  final List<ProductDto>? products;
  @JsonKey(name: "total")
  final int? total;
  @JsonKey(name: "skip")
  final int? skip;
  @JsonKey(name: "limit")
  final int? limit;

  ProductsResponse ({
    this.products,
    this.total,
    this.skip,
    this.limit,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProductsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProductsResponseToJson(this);
  }
}
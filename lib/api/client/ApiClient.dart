import 'package:flutter_advanced_bootcamp/api/response/products_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'ApiClient.g.dart';

@RestApi(baseUrl: "https://dummyjson.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  @GET("/products")
  Future<ProductsResponse> getProducts({@Query("limit") int perPage=10});
}

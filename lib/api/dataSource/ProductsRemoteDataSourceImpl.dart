import 'package:flutter_advanced_bootcamp/api/client/ApiClient.dart';

import '../../data/dataSource/ProductsRemoteDataSource.dart';
import '../../domain/model/product.dart';

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  //Composition Dependency Injection
  ApiClient _client;

  ProductsRemoteDataSourceImpl(this._client);

  @override
  Future<List<Product>> getProducts() async {
    var response = await _client.getProducts();
    return response.products?.map((e) => e.toProduct()).toList() ?? [];
  }
}

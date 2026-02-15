import 'package:flutter_advanced_bootcamp/data/dataSource/ProductsRemoteDataSource.dart';

import '../../domain/model/product.dart';
import '../../domain/repositories/ProductsRepo.dart';

class ProductsRepoImpl implements ProductsRepo{
  ProductsRemoteDataSource _remoteDataSource;
  ProductsRepoImpl(this._remoteDataSource);
  @override
  Future<List<Product>> getProducts() {
    return _remoteDataSource.getProducts();
  }
}

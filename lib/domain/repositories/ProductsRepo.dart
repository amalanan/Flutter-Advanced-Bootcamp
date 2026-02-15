
import '../model/product.dart';

abstract class ProductsRepo {
  Future<List<Product>> getProducts();
}

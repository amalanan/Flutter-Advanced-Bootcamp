
import '../../domain/model/product.dart';

abstract class ProductsRemoteDataSource{
Future<List<Product>> getProducts();
}

import 'package:app/services/local_data.dart';
import 'package:app/services/product_repository.dart';
import 'package:app/services/remote_data.dart';

import '../models/product.dart';

class ProductService {
  static final ProductRepository _repository = ProductRepository(
    remoteData: RemoteDataSource(),
    localData: LocalDataSource(),
  );

  static Future<List<Product>> fetchProductsFromApi() {
    return _repository.fetchFromApi();
  }

  static Future<List<Product>> fetchProductsFromLocalJson() {
    return _repository.fetchFromLocal();
  }
}

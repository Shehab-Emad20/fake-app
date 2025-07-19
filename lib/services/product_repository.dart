import 'package:app/services/local_data.dart';
import 'package:app/services/remote_data.dart';
import '../models/product.dart';


class ProductRepository {
  final RemoteDataSource remoteData;
  final LocalDataSource localData;

  ProductRepository({required this.remoteData, required this.localData});

  Future<List<Product>> fetchFromApi() => remoteData.fetchProductsFromApi();
  Future<List<Product>> fetchFromLocal() => localData.fetchProductsFromLocalJson();
}

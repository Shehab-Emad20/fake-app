import 'dart:convert';

import 'package:dio/dio.dart';
import '../models/product.dart';

class RemoteDataSource {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProductsFromApi() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      if (response.statusCode == 200) {
        final data = response.data;
        final List<dynamic> items = data is String ? jsonDecode(data) : data;
        return items.map((item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('Failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('API Error: $e');
    }
  }
}

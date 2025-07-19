import 'package:app/widgets/listView_wideget.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Toggle this to switch between API and local data
  final bool useApi = false;

  Future<List<Product>> _getProducts() {
    if (useApi) {
      return ProductService.fetchProductsFromApi();
    } else {
      return Future.value(ProductService.fetchProductsFromApi());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products'), centerTitle: true),
      body: FutureBuilder<List<Product>>(
        future: _getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products found.'));
          }
          final products = snapshot.data!;
          return ListViewWideget(products: products);
        },
      ),
    );
  }
}



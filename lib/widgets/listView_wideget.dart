import 'package:app/models/product.dart';
import 'package:app/screens/product_details_screen.dart';
import 'package:app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ListViewWideget extends StatelessWidget {
  const ListViewWideget({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: products.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          product: product,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductDetailsScreen(product: product),
              ),
            );
          },
        );
      },
    );
  }
}
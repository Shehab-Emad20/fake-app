
import 'package:app/models/product.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'product-image-${product.id}',
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        child: Image.network(
          product.imageUrl,
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

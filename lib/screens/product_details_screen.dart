import 'package:app/widgets/body_producut_widget.dart';
import 'package:app/widgets/hero_widget.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prodcut")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroWidget(product: product),
            BodyProducutWidget(product: product),
          ],
        ),
      ),
    );
  }
}


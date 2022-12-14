import 'package:flutter/material.dart';
import 'package:i18n/app/models/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              product.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(product.name),
          Text(
            product.price.toStringAsFixed(2),
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            product.releaseDate.toString(),
          ),
        ],
      ),
    );
  }
}

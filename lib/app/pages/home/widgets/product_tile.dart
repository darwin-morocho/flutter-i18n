import 'package:flutter/material.dart';
import 'package:i18n/app/models/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => _show(context),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Chip(
                      label: Text(
                        product.rate.toStringAsFixed(1),
                      ),
                    ),
                  ),
                ],
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
      ),
    );
  }

  Future<void> _show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text(
                  'SUMMARY',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),
              Text('Product: ${product.name}'),
              Text('Price: ${product.price.toStringAsFixed(2)}'),
              Text('Release date: ${product.releaseDate}'),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('PAY NOW ${product.price.toStringAsFixed(2)}'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

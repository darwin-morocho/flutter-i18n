import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:i18n/app/models/product.dart';
import 'package:i18n/app/pages/home/widgets/product_tile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final list = <Product>[];

  @override
  void initState() {
    super.initState();
    final faker = Faker();
    for (int i = 0; i < 50; i++) {
      list.add(
        Product(
          name: faker.food.dish(),
          image: faker.image.image(),
          price: faker.randomGenerator.decimal(
            min: 0.99,
            scale: 100,
          ),
          releaseDate: faker.date.dateTime(
            minYear: 2020,
            maxYear: 2022,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (_, index) {
          final product = list[index];
          return ProductTile(product: product);
        },
        itemCount: list.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'product_card.dart';

class GridProduct extends StatefulWidget {
  const GridProduct({Key? key}) : super(key: key);

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 6,
      mainAxisSpacing: 6,
      childAspectRatio: 1 / 1.6,
      children: List.generate(
        30,
        (index) {
            return const ProductCard(
              image: "assets/icons/Image.png",
              time: "Вчера, 19:20",
              about: "Оригинальные кроссовки Nike Air Max 97",
              city: "г. Ташкент",
              price: "4 820 000",
            );

        },
      ),
    );
  }
}

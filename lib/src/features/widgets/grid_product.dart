import 'package:flutter/material.dart';

import '../main/main/categories/widgets/product_info/product_info.dart';
import 'product_card.dart';

class GridProduct extends StatefulWidget {
  const GridProduct({Key? key}) : super(key: key);

  @override
  State<GridProduct> createState() => _GridProductState();
}

class _GridProductState extends State<GridProduct> {
  void openProductInfo() => Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const ProductInfo(),
    ),
  );

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
            return  ProductCard(
              onTap: openProductInfo,
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

import 'package:flutter/material.dart';

import '../../common/constants/app_color.dart';

class ProductCard extends StatefulWidget {
  final String image;
  final String city;
  final String about;
  final String time;
  final String price;

  const ProductCard({
    required this.image,
    required this.city,
    required this.about,
    required this.time,
    required this.price,
    super.key,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 170,
      height: 257,
      child: Card(
        color: AppColor.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Image(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
             Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColor.bkgColor,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.city,
                          style: const TextStyle(
                            color: AppColor.cityColor,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                       widget.about,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColor.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      widget.time,
                      style: const TextStyle(
                        color: AppColor.textGrey,
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                         widget.price,
                          style: const TextStyle(
                            color: AppColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "UZS",
                          style: TextStyle(
                            color: AppColor.mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../common/constants/app_color.dart';

class ProductListTile extends StatefulWidget {
  final void Function() onTap;
  final String image;
  final String city;
  final String about;
  final String time;
  final String price;

  const ProductListTile({
    required this.onTap,
    required this.image,
    required this.city,
    required this.about,
    required this.time,
    required this.price,
    super.key,
  });

  @override
  State<ProductListTile> createState() => _ProductListTileState();
}

class _ProductListTileState extends State<ProductListTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: size.width * 0.45,
        height: size.width * 0.45 / 2,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            color: AppColor.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  child: Image.asset(
                    "assets/icons/Image.png",
                    height: size.width * 0.45,
                    fit: BoxFit.cover,
                    width: size.width * 0.45,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../common/constants/app_icons.dart';

class GoodCategories extends StatelessWidget {
  final String categoryName;

  const GoodCategories({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            focusColor: Colors.purple,
            leading: Image.asset(
              AppIcons.star,
              width: 20,
              height: 20,
            ),
            title: Text(
              categoryName,
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.15),
            child: const Divider(
              height: 3,
            ),
          ),
        ],
      ),
    );
  }
}

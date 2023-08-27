import 'package:flutter/material.dart';
import 'package:project_77_uz/src/common/constants/app_color.dart';

import '../../../../../common/constants/app_icons.dart';

class SearchResult extends StatelessWidget {
  final String categoryName;

  const SearchResult({Key? key, required this.categoryName})
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
              AppIcons.searchIcon,
              width: 20,
              height: 20,
              color: AppColor.mainColor,
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

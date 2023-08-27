import 'package:flutter/material.dart';

import '../../../../../common/constants/app_color.dart';

class ListTileCategories extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const ListTileCategories({
    required this.onTap,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        text,
      ),
      trailing: const Icon(
        Icons.navigate_next,
        size: 20,
        color: AppColor.textGrey,
      ),
    );
  }
}

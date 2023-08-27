import 'package:flutter/material.dart';

import '../../common/constants/app_color.dart';

class BottomIconWidget extends StatelessWidget {
  final String image;
  final bool? isActive;

  const BottomIconWidget({
    required this.image,
    this.isActive = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 24,
      height: 24,
      color: isActive! ? const Color(0xFF8E9297) : AppColor.mainColor,
      image: AssetImage(image),
    );
  }
}

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String actionsIcon;
  final String? leading;

  const CustomAppBar({
    required this.title,
    required this.actionsIcon,
    this.leading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading != null
            ? Image(
                image: AssetImage(leading!),
                width: 32,
                height: 32,
              )
            : const SizedBox(
                width: 32,
                height: 32,
              ),
        Image(
          image: AssetImage(title),
          width: 69,
          height: 36,
        ),
        Image(
          width: 24,
          height: 24,
          image: AssetImage(actionsIcon),
        ),
      ],
    );
  }
}

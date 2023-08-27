import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String about;
  final String? icon;
  final Widget? widget;

  const CustomListTile({
    required this.about,
    this.icon,
    this.widget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEAEDF0), strokeAlign: 2),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: ListTile(
          title: Text(
            about,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: widget != null ? widget! : SizedBox(),
          leading: icon != null
              ? Image(
                  image: AssetImage(icon!),
                  width: 24,
                  height: 24,
                )
              : SizedBox(),
        ),
      ),
    );
  }
}

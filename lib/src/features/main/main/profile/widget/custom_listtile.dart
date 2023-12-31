import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String about;
  final String? icon;
  final Widget? widget;
  final Widget route;

  const CustomListTile({
    required this.about,
    this.icon,
    this.widget,
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFEAEDF0), strokeAlign: 2),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: ListTile(
            title: Text(
              about,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: widget != null ? widget! : const SizedBox(),
            leading: icon != null
                ? Image(
                    image: AssetImage(icon!),
                    width: 24,
                    height: 24,
                  )
                : const SizedBox(),
          ),
        ),
      ),
    );
  }
}

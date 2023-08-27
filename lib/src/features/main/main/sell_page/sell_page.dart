import 'package:flutter/material.dart';
import 'package:project_77_uz/src/common/constants/app_color.dart';
import 'package:project_77_uz/src/common/constants/app_icons.dart';

class SellPage extends StatefulWidget {
  const SellPage({Key? key}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: Text(
          "Создать объявления",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
        ),
        backgroundColor: AppColor.white,
      ),
      body: Column(
        children: [
          Divider(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_77_uz/src/common/constants/app_color.dart';

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
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
        title: const Text(
          "Создать объявления",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
        ),
        backgroundColor: AppColor.white,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Котактная информация",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

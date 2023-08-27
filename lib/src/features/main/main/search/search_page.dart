import 'package:flutter/material.dart';
import 'package:project_77_uz/src/features/main/main/search/widgets_for_search/good_categories.dart';

import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(screenHeight * 0.025),
            child: SizedBox(
              height: screenHeight * 0.08,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(),
                  hintText: 'Что вы ищите?',
                  suffix: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Поиск"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  focusColor: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.03),
            child: const Text("Популярные поиски"),
          ),
          for (int i = 0; i < categories.length; i++)
            Column(
              children: [
                GoodCategories(
                  categoryName: categories[i],
                ),
              ],
            ),
        ],
      ),
    );
  }
}

const List<String> categories = [
  "Холодильник",
  "Телевизор",
  "Наушники и аксессуары",
  "Кухонная мебель",
  "Телефоны",
  "Бытовая техника",
  "Микроволновки",
  "Аккумулятор",
];

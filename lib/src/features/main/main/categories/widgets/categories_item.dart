import 'package:flutter/material.dart';

import '../../../../../common/constants/app_color.dart';
import '../../../../../common/constants/app_icons.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../controller_page.dart';
import 'item_page.dart';
import 'list_tile_categories.dart';

class CategoriesItem extends StatefulWidget {
  final String item;

  const CategoriesItem({
    required this.item,
    super.key,
  });

  @override
  State<CategoriesItem> createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  List<String> items = [
    "Смартфоны",
    "Аксессуары для смартфонов и телефонов",
    "Смарт-часы",
    "Фитнес браслеты",
    "Ремешки для часов и смарт-часов",
    "Запчасти для смартфонов",
    "Аксессуары для смартфонов и телефонов",
  ];


  void exit() => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const CustomPageController(),
    ),
  );

  void openItem(String item, String oldItem) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ItemPage(item: item, oldItem: oldItem),
        ),
      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bkgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    weight: 3,
                  ),
                  onPressed: exit,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    widget.item,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 342,
              height: 400,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTileCategories(
                        onTap: () => openItem(
                          items[index],
                          widget.item,
                        ),
                        text: items[index],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

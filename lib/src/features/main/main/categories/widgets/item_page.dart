import 'package:flutter/material.dart';

import '../../../../../common/constants/app_color.dart';
import '../../../../../common/constants/app_icons.dart';
import '../../../../widgets/custom_appbar.dart';
import '../categories.dart';
import 'categories_item.dart';
import 'list_tile_categories.dart';
import 'open_menu_for_categories.dart';

class ItemPage extends StatefulWidget {
  final String item;
  final String oldItem;

  const ItemPage({
    required this.oldItem,
    required this.item,
    super.key,
  });

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  List<String> items = [
    "Аксессуары",
    "Мобильные телефоны",
    "Сим карты / тарифы / номера",
    "Смартфоны",
    "Прочие телефоны",
    "Стационарные телефоны",
    "Ретро телефоны",
    "Телефон лягушки"
  ];

  void exit() => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => CategoriesItem(item: widget.oldItem),
        ),
      );

  void exitOld() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Categories(),
        ),
      );

  void openOpenMenuForCategories(String item) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => OpenMenuForCategories(item: item),
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
                  onPressed: exitOld,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    widget.oldItem,
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
              height: 50,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_sharp,
                        size: 20,
                        weight: 3,
                      ),
                      onPressed: exit,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        widget.item,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: AppColor.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 342,
              height: 450,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTileCategories(
                        onTap: () => openOpenMenuForCategories(items[index]),
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

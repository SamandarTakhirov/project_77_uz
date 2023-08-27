import 'package:flutter/material.dart';
import 'package:project_77_uz/src/common/constants/app_color.dart';
import 'package:project_77_uz/src/features/main/main/search/widgets_for_search/good_categories.dart';
import 'package:project_77_uz/src/features/widgets/grid_product.dart';

import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: AppColor.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 595,
              backgroundColor: AppColor.white,
              toolbarHeight: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screen.height * 0.025),
                      child: SizedBox(
                        height: screen.height * 0.08,
                        width: double.infinity,
                        child: Text(""),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screen.height * 0.03),
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
                collapseMode: CollapseMode.pin,
              ),
            ),
          ];
        },
        body: const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: GridProduct(),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
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

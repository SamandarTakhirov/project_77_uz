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
  bool isSearch = true;
  final controllerText = TextEditingController();

  @override
  void initState() {
    super.initState();
    controllerText.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final screen = MediaQuery.of(context).size;
    return isSearch
        ? Scaffold(
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
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 600,
                    backgroundColor: AppColor.white,
                    toolbarHeight: 0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(screen.height * 0.025),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSearch = !isSearch;
                                });
                              },
                              child: Container(
                                height: screen.height * 0.08,
                                width: screen.width * 0.95,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Image.asset(
                                            AppIcons.searchIcon,
                                            width: 24,
                                            height: 24,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Что вы ищите?",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.black,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                          child: const Text("Поиск"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: screen.height * 0.03),
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
              body: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: GridProduct(),
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              title: const CustomAppBar(
                title: AppIcons.logo,
                actionsIcon: AppIcons.bell,
              ),
            ),
            backgroundColor: AppColor.white,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(screen.height * 0.025),
                  child: SizedBox(
                    height: screen.height * 0.08,
                    width: screen.width * 0.95,
                    child: TextField(
                      controller: controllerText,
                      autofocus: true,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Image.asset(
                            AppIcons.searchIcon,
                            width: 20,
                            height: 20,
                            color: Colors.grey,
                          ),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        hintText: 'Что вы ищите?',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        suffix: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text("Поиск"),
                        ),
                        focusColor: Colors.black,
                      ),
                      onSubmitted: (text) {
                        if (text.isEmpty) {
                          isSearch = true;
                        }
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
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

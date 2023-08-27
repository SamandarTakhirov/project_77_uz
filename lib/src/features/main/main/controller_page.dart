import 'package:flutter/material.dart';

import '../../../common/constants/app_color.dart';
import '../../../common/constants/app_icons.dart';
import '../../widgets/bottom_icon_widget.dart';
import 'categories/categories.dart';
import 'home/home_page.dart';
import 'profile/profille_page.dart';
import 'search/search_page.dart';

class CustomPageController extends StatefulWidget {
  const CustomPageController({Key? key}) : super(key: key);

  @override
  State<CustomPageController> createState() => _CustomPageControllerState();
}

class _CustomPageControllerState extends State<CustomPageController> {
  int pageNumber = 0;

  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void pageChange(int value) {
    controller.jumpToPage(value);
    setState(() {
      pageNumber = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bkgColor,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: pageChange,
        children: const [
          HomePage(),
          SearchPage(),
          Categories(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0), ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: pageChange,
          backgroundColor: AppColor.white,
          currentIndex: pageNumber,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: AppColor.black,
          unselectedLabelStyle: const TextStyle(
            color: AppColor.textGrey,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          selectedLabelStyle: const TextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
          elevation: 0,
          items:  const [
            BottomNavigationBarItem(
              icon: BottomIconWidget(image: AppIcons.home, isActive: true),
              label: "Главная",
              activeIcon: BottomIconWidget(image: AppIcons.home),
            ),
            BottomNavigationBarItem(
              icon: BottomIconWidget(image: AppIcons.searchIcon, isActive: true),
              label: "Поиск",
              activeIcon: BottomIconWidget(image: AppIcons.searchIcon),
            ),
            BottomNavigationBarItem(
              icon: BottomIconWidget(image: AppIcons.category, isActive: true),
              label: "Категории",
              activeIcon: BottomIconWidget(image: AppIcons.category),
            ),
            BottomNavigationBarItem(
              icon: BottomIconWidget(image: AppIcons.profile, isActive: true),
              label: "Профиль",
              activeIcon: BottomIconWidget(image: AppIcons.profile),
            ),
          ],
        ),
      ),
    );
  }
}

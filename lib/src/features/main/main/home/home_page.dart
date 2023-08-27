import 'package:flutter/material.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/grid_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
      ),
      backgroundColor: AppColor.bkgColor,
      body: const SafeArea(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Популярное продукты",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColor.black,
                    ),
                  ),
                  Text(
                    "Вы можете найти все категории, которые вам нужны от покупателя",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.textGrey,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: GridProduct(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

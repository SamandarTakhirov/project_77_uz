import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/constants/app_color.dart';
import '../../../../../common/constants/app_icons.dart';
import '../../../../widgets/custom_appbar.dart';
import '../categories.dart';

class OpenMenuForCategories extends StatefulWidget {
  final String item;

  const OpenMenuForCategories({
    required this.item,
    super.key,
  });

  @override
  State<OpenMenuForCategories> createState() => _OpenState();
}

class _OpenState extends State<OpenMenuForCategories> {
  bool changeView = false;

  void exit() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Categories(),
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
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 200,
                  height: 32,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Все объявления",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      changeView = true;
                    });
                  },
                  icon: Icon(
                    Icons.table_rows_rounded,
                    color: changeView == true
                        ? AppColor.mainColor
                        : AppColor.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      changeView = false;
                    });
                  },
                  icon: Icon(
                    Icons.grid_view_outlined,
                    color: changeView == false
                        ? AppColor.mainColor
                        : AppColor.black,
                  ),
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(32, 32),
                    backgroundColor: AppColor.white,
                  ),
                  onPressed: () {},
                  child: const Center(
                    child: Icon(
                      Icons.filter_list_sharp,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

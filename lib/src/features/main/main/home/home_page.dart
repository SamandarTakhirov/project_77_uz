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

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
      ),
      backgroundColor: AppColor.bkgColor,
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              expandedHeight: 80,
              backgroundColor: AppColor.bkgColor,
              toolbarHeight: 0,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                  ],
                ),
                collapseMode: CollapseMode.pin,
              ),
            ),
            // SliverPersistentHeader(
            //   delegate: MySliverHeaderDelegate(),
            //   pinned: false,
            // ),
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


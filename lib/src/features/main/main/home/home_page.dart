import 'package:flutter/material.dart';
import 'package:project_77_uz/src/features/widgets/my_sliverheader_delegate.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';
import '../../../widgets/product_card.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
          leading: AppIcons.russianFlag,
        ),
      ),
      backgroundColor: AppColor.bkgColor,
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          const SliverAppBar(
            expandedHeight: 80,
            backgroundColor: AppColor.bkgColor,
            toolbarHeight: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
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
                ],
              ),
              collapseMode: CollapseMode.pin,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1 / 1.6,
              children: List.generate(
                8,
                    (index) {
                  return const ProductCard(
                    image: "assets/icons/Image.png",
                    time: "Вчера, 19:20",
                    about: "Оригинальные кроссовки Nike Air Max 97",
                    city: "г. Ташкент",
                    price: "4 820 000",
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(bottom: 10),
            sliver: SliverToBoxAdapter(
              child: MySliverHeaderDelegate(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 1 / 1.6,
              children: List.generate(
                8,
                    (index) {
                  return const ProductCard(
                    image: "assets/icons/Image.png",
                    time: "Вчера, 19:20",
                    about: "Оригинальные кроссовки Nike Air Max 97",
                    city: "г. Ташкент",
                    price: "4 820 000",
                  );
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

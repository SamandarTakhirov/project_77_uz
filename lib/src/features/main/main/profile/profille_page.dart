import 'package:flutter/material.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';
import '../sell_page/sell_page.dart';
import 'my_ad_page.dart';
import 'profil_data.dart';
import 'widget/custom_listtile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: "assets/icons/ic_log_out.png",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 111,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: const Color(0xFFEAEDF0),
                    width: 2,
                  ),
                ),
                child: const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 54,
                        height: 54,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/Image.png"),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.mainColor,
                                  blurRadius: 10,
                                  offset: Offset(0, 0))
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Шохрух Шавкиев",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(
                7,
                (index) => CustomListTile(
                  about: MainProfilePageDec.title[index],
                  icon: MainProfilePageDec.icons[index],
                  route: MainProfilePageDec.routes[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MainProfilePageDec {
  static  List<Widget> routes = [
    ProfileDataPage(),
    MyAddPage(),
    ProfileDataPage(),
    ProfileDataPage(),
    ProfileDataPage(),
    ProfileDataPage(),
    ProfileDataPage(),
  ];
  static const List<String> icons = [
    "assets/icons/ic_personal_information.png",
    "assets/icons/ic_category_four.png",
    "assets/icons/ic_settings.png",
    "assets/icons/ic_about.png",
    "assets/icons/ic_about.png",
    "assets/icons/ic_about.png",
    "assets/icons/ic_about.png",
  ];

  static const List<String> title = [
    "Персональные данные",
    "Мои объявления",
    "Настройки",
    "Уведомления",
    "Язык",
    "Правила пользования",
    "О нас"
  ];
}

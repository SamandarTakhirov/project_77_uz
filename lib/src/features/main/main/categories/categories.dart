import 'package:flutter/material.dart';

import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';
import 'widgets/categories_item.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with AutomaticKeepAliveClientMixin {
  List<String> icons = [
    AppIcons.forWomen,
    AppIcons.beauty,
    AppIcons.appliances,
    AppIcons.forMen,
    AppIcons.health,
    AppIcons.electronics,
    AppIcons.babyProducts,
    AppIcons.jewellry,
    AppIcons.homeStaff,
    AppIcons.shoes,
    AppIcons.office,
    AppIcons.sportAndRest,
    AppIcons.carProducts,
    AppIcons.cars,
    AppIcons.motoSport,
    AppIcons.countrySide,
    AppIcons.hygiene,
    AppIcons.accessories,
    AppIcons.sneakers,
    AppIcons.construction,
    AppIcons.bags,
  ];

  List<String> names = [
    "Для женщин",
    "Красота",
    "Бытовая техника",
    "Для мужчин",
    "Здоровье",
    "Электроника",
    "Детские товары",
    "Украшения и бижутерия",
    "Домашняя утварь",
    "Обувь",
    "Канцелярия",
    "Спорт и отдых",
    "Автотовары",
    "Новые легковые автомобили",
    "Мототранспорт",
    "Дача, сады и огороды",
    "Личная гигиена",
    "Аксессуарлар",
    "Бытовая химия и личная гигиена",
    "Строительство и ремонт",
    "Сумки и чемоданы",
    ""
  ];

  void openCategoriesItem(String items) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  CategoriesItem(item: items),
        ),
      );

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
      backgroundColor: const Color(0xFFF0F3F7),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => openCategoriesItem(names[index]),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0,
                              spreadRadius: .2,
                              color: Colors.grey.shade300,
                            )
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.white,
                        ),
                        height: 64,
                        width: 64,
                        child: Center(
                          child: Image(
                            width: 32,
                            height: 32,
                            image: AssetImage(icons[index]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 55, right: 15, top: 10, bottom: 10),
                    child: SizedBox(
                      height: 85,
                      width: MediaQuery.sizeOf(context).width * .8,
                      child: ListTile(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        contentPadding: EdgeInsets.only(left: 50, right: 10),
                        tileColor: Colors.white,
                        title: Text(
                          names[index],
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF16191D),
                          ),
                        ),
                        subtitle: const Text(
                          "4 147 объявлений",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8E9297),
                          ),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: icons.length,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

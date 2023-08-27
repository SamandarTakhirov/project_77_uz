

import 'package:flutter/material.dart';

import '../../common/constants/app_color.dart';
import '../../common/constants/app_icons.dart';

class MySliverHeaderDelegate extends StatefulWidget {
  const MySliverHeaderDelegate({Key? key}) : super(key: key);

  @override
  State<MySliverHeaderDelegate> createState() => _MySliverHeaderDelegateState();
}

class _MySliverHeaderDelegateState extends State<MySliverHeaderDelegate> {
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Популярные категории",
            style: TextStyle(
              color: AppColor.black,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 64,
          width: double.infinity,
          child: ListView.builder(
            // separatorBuilder: (context, index) {
            //   return
            //   icons.last == index ? SizedBox(width: 10) : SizedBox();
            // },
            scrollDirection: Axis.horizontal,
            itemCount: icons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: SizedBox(
                  height: 64,
                  width: 200,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: DecoratedBox(
                            decoration: const BoxDecoration(
                              color: AppColor.mainColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Center(
                              child: Image(
                                width: 20,
                                height: 20,
                                color: AppColor.white,
                                image: AssetImage(icons[index]),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            names[index],
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF16191D),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

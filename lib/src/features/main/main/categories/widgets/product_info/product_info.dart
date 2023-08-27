import 'package:flutter/material.dart';

import '../../../../../../common/constants/app_color.dart';
import '../../../../../../common/constants/app_icons.dart';
import '../../../../../widgets/custom_appbar.dart';
import '../../../controller_page.dart';
import 'images.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  void exit() => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CustomPageController(),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 32,
                  weight: 3,
                ),
                onPressed: exit,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 583,
              child: ColoredBox(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 266,
                      child: Image(
                        image: AssetImage("assets/icons/Image.png"),
                        fit: BoxFit.fill,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) => const Images()),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Электроника Фены",
                        style: TextStyle(
                          color: AppColor.textGrey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Стайлер для волос Dyson Airwrap Complete Long в цветe Vinca blue и Rose",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColor.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColor.bkgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Вчера, 19:20",
                                style: TextStyle(
                                  color: AppColor.cityColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColor.bkgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "г. Самарканд",
                                style: TextStyle(
                                  color: AppColor.cityColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Text(
                            "6 520 000",
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "UZS",
                            style: TextStyle(
                              color: AppColor.mainColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(343, 40),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Показать телефон",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.phone,
                              color: AppColor.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: double.infinity,
              height: 550,
              child: ColoredBox(
                color: AppColor.white,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Мультистайлер Dyson Airwrap Complete Long в цветe"
                        " Vinca blue и Rose Бесплатная доставка по ТАШКЕНТУ!!! 100% "
                        "оригинал С новыми цилиндрами для завивки и волнения в обоих направлениях,"
                        "щетками для контроля и придания формы, а также многофункциональной сушилкой "
                        "для разглаживания Coanda для сушки,разглаживания и сокрытия разлетающихся волос "
                        "3 В комплектацию входят 30-мм цилиндрические насадки Airwrap для завивки, 40-мм "
                        "цилиндрические насадки Airwrap для завивки Круглая щетка для создания объема, Мягкая "
                        "щетка для выпрямления, Жесткая щетка для выпрямление Особенности фена В комплекте Чехол"
                        "для хранения Термостойкий коврик Щетка для очистки Для длинных до груди или"
                        " более длинных волос. Пoдxoдит для разных типoв вoлoc. Сoздaние лoконoв и волн. Pазглаживaниe."
                        " Высушивaние вoлос. Без экстpeмальныx тeмперaтур. В последней версии 2022 Года появились"
                        " новые насадки, такие как: - обновлённый цилиндр для завивки, предусматривающий поток воздуха"
                        " в двух направлениях, то есть больше не нужно переставлять насадки. По вопросам пишите в телеграм на номер",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: double.infinity,
              height: 178,
              child: ColoredBox(
                color: AppColor.white,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Продавец",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Images(),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Малика Абдурахимова",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "ID: 1326547",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "+998 ** *** ** **",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColor.bkgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Показать телефон",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: double.infinity,
              height: 278,
              child: ColoredBox(
                color: AppColor.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Местоположение",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: AppColor.mainColor),
                          Text(
                            "г.Ташкент, ул.Олмачи 1-й проезд 13 дом",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Image(
                        image: AssetImage("assets/icons/Map.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

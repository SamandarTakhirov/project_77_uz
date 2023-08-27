import 'package:flutter/material.dart';

import '../../../../common/constants/app_color.dart';
import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';

class ProfileDataPage extends StatefulWidget {
  const ProfileDataPage({Key? key}) : super(key: key);

  @override
  State<ProfileDataPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfileDataPage>
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
            TextButton.icon(
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
                size: 32,
              ),
              label: const Text(
                "Персональные данные",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 370,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: const Color(0xFFEAEDF0),
                    width: 2,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: SizedBox(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Шохрух Шавкиев",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    for (int i = 0; i < 3; i++)
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 290,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEDF0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  ProfileDec.profileList[i],
                                  width: 24,
                                  height: 24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 220,
                                    child: Text(
                                      ProfileDec.info[i],
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
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

class ProfileDec {
  static const List<String> profileList = [
    AppIcons.phone,
    AppIcons.email,
    AppIcons.location
  ];
  static const List<String> info = [
    "+998 88 033 18 15",
    "sh.shavqiyev@77.uz",
    "8897+PMP, Almachi Street, Тоshkent, Узбекистан",
  ];
}

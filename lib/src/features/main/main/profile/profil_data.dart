import 'package:flutter/material.dart';
import 'package:project_77_uz/src/features/main/main/profile/profille_page.dart';

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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),
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
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

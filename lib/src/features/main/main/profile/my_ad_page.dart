import 'package:flutter/material.dart';

import '../../../../common/constants/app_icons.dart';
import '../../../widgets/custom_appbar.dart';

class MyAddPage extends StatefulWidget {
  const MyAddPage({Key? key}) : super(key: key);

  @override
  State<MyAddPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<MyAddPage>
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
                "Мои объявление",
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
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

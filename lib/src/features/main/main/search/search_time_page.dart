import 'package:flutter/material.dart';
import 'package:project_77_uz/src/common/constants/app_color.dart';
import 'package:project_77_uz/src/common/constants/app_icons.dart';
import 'package:project_77_uz/src/features/widgets/custom_appbar.dart';

class SearchTimePage extends StatefulWidget {
  const SearchTimePage({Key? key}) : super(key: key);

  @override
  State<SearchTimePage> createState() => _SearchTimePageState();
}

class _SearchTimePageState extends State<SearchTimePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const CustomAppBar(
          title: AppIcons.logo,
          actionsIcon: AppIcons.bell,
        ),
      ),
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(screen.height * 0.025),
            child: SizedBox(
              height: screen.height * 0.08,
              width: screen.width * 0.95,
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Image.asset(
                      AppIcons.searchIcon,
                      width: 20,
                      height: 20,
                      color: Colors.grey,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  hintText: 'Что вы ищите?',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  suffix: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Поиск"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  focusColor: Colors.black,
                ),
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

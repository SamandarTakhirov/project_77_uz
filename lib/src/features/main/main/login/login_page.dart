
import 'package:flutter/material.dart';
import '../controller_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constants/app_color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.preferences}) : super(key: key);
  final SharedPreferences preferences;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController loginController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    loginController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    loginController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: .5,
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          "Войти",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height - 150,
            child: Column(
              children: [
                const ListTile(
                  title: Text(
                    "Добро пожаловать!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Войти в систему чтобы торговать в системе",
                    style: TextStyle(color: Color(0xFF8E9297)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      MyTextField(
                        controller: loginController,
                        text: "Логин",
                        hintText: "Введите логин",
                        hasHelper: false,
                      ),
                      MyTextField(
                        controller: passwordController,
                        text: "Пароль",
                        hintText: "Введите пароль",
                        hasHelper: true,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFEAEDF0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (loginController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        return;
                      }
                      widget.preferences.setBool("isLogged", true);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomPageController(),
                        ),
                      );
                    },
                    child: const Text(
                      "Войти",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 1,
                          child: ColoredBox(
                            color: AppColor.dividerColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: Text(
                          "Хотите стать продавцом?",
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColor.textGrey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          height: 1,
                          child: ColoredBox(
                            color: AppColor.dividerColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFF388FF3),
                        width: 1.4,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Подать заявку",
                      style: TextStyle(
                        color: Color(0xFF388FF3),
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
    );
  }
}

class MyTextField extends StatelessWidget {
  final String text;
  final String hintText;
  final bool hasHelper;
  final TextEditingController controller;

  const MyTextField({
    required this.controller,
    required this.text,
    required this.hintText,
    required this.hasHelper,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text),
        ),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF0F3F7),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFFB8BBBD),
            ),
            helperText: hasHelper ? "Забыли пароль?" : "",
            helperStyle: const TextStyle(
              color: AppColor.mainColor,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

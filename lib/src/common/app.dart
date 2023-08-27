import 'package:flutter/material.dart';
import 'package:project_77_uz/src/features/main/main/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/main/main/controller_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SharedPreferences? preferences;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "77UZ",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FutureBuilder(
            future: SharedPreferences.getInstance(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                preferences = snapshot.data!;
                final bool isLogged = preferences!.getBool("isLogged") ?? false;
                return isLogged
                    ? const CustomPageController()
                    : LoginPage(
                        preferences: preferences!,
                      );
              } else if (snapshot.hasError) {
                return const Center(child: Icon(Icons.error_outline));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

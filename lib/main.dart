import 'package:flutter/material.dart';
import 'package:myfirst_app/pages/home_page.dart';
import 'package:myfirst_app/pages/login_page.dart';
import 'package:myfirst_app/utils/routes.dart';
import 'package:myfirst_app/widgets/themes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      // initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myfirst_app/pages/home_page.dart';
import 'package:myfirst_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        ),
      darkTheme: ThemeData(brightness: Brightness.light,),
      initialRoute: "/login",
      routes:{
           "/" :(context)=>LoginPage(),
           "/home" :(context)=>HomePage(),
           "/login" :(context)=>LoginPage()
      }
    );
  }
}


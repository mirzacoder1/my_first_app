import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var days=30;
    var announce="Welcome to ";
    var ment=" days of Flutter";
    return Scaffold(
        appBar:AppBar(
          title: Text("Flutter Application!!"),
        ),
        body: Center(
          child:Container(
            child: Text(announce+'$days'+ment,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          )
        ),
        drawer: Drawer(),
      );
  }
}
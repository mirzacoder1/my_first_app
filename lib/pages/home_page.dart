import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirst_app/Models/catalog.dart';
import 'package:myfirst_app/widgets/drawer.dart';
import 'package:myfirst_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 30;

  final announce = "Welcome to ";

  final ment = " days of Flutter";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var cataalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(cataalogJson);
    var productsData = decodeData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Catalog App..."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.6),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
    return scaffold;
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    await Future.delayed(Duration(seconds:3));
    var cataalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(cataalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Catalog App..."),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // ignore: unnecessary_null_comparison
        child:(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)?ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ): Center(
          child: CircularProgressIndicator(),
        )
      ),
      drawer: MyDrawer(),
    );
    return scaffold;
  }
}
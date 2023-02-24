import 'package:flutter/material.dart';
import 'package:myfirst_app/Models/catalog.dart';
import 'package:myfirst_app/widgets/drawer.dart';
import 'package:myfirst_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final days = 30;
  final announce = "Welcome to ";
  final ment = " days of Flutter";

  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(10, (index) => CatalogModel.items[0]);
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("Catalog App....."),
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

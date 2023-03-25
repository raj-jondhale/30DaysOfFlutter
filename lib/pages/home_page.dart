import 'package:flutter/material.dart';
import 'package:my_app/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog app'),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}

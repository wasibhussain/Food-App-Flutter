import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';
import '../widgets/main_drawer.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES
              .map((categoryData) => CategoryItem(
                  categoryData.title, categoryData.color, categoryData.id))
              .toList()),
    );
  }
}

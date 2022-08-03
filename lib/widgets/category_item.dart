import 'package:flutter/material.dart';
import 'package:food_app/screens/category_item_details_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem(this.title, this.color, this.id);
  void selectedItem(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals', arguments: {"title": title, "id": id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        selectedItem(context);
      }),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        )),
      ),
    );
  }
}

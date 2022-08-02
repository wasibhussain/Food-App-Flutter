import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategoryItem(this.title, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.withOpacity(0.7),
            color,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15)),
      child: Text(title),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/widgets/meals_item.dart';
import '../dummy_data.dart';

class CategoryItemDetails extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  // CategoryItemDetails(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryMeals = DUMMY_MEALS.where(((meal) {
      return meal.categories.contains(categoryId);
    })).toList();

    print(categoryTitle);
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Meals(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability);
          }),
          itemCount: categoryMeals.length,
        ));
  }
}

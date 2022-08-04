import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealsDetailScreen extends StatelessWidget {
  const MealsDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/meal-details';

  Widget buildSectoinTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        height: 200,
        width: 300,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
            child: child,);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    print(selectedMeal.id);

    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectoinTitle(context, 'Ingredients'),
              buildContainer(
                ListView.builder(
                    itemCount: selectedMeal.ingredients.length,
                    itemBuilder: (ctx, index) {
                      return Card(
                        color: Theme.of(context).accentColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(selectedMeal.ingredients[index]),
                        ),
                      );
                    }),
              ),
              buildSectoinTitle(context, 'Steps'),
              buildContainer(ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: ((context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Text('${index+1}'),),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider()
                  ],
                ) )))
            ],
          ),
        ));
  }
}

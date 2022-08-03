import 'package:flutter/material.dart';
import 'package:food_app/models/categories_screen.dart';
import 'package:food_app/screens/category_item_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          headline6: const TextStyle(fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold)
        )
      ),
      home: const CategoriesScreen(),
      routes: {
        '/category-meals':(ctx) => CategoryItemDetails()
      },
    );
  }
}

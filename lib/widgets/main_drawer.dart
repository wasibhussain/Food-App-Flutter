import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function goToScreen) {
    return ListTile(
      onTap:(() =>goToScreen ),
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
            fontSize: 24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor,
                  fontSize: 30),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile('Meals', Icons.restaurant, () {
             Navigator.of(context).pushNamed('/categories');
          }),
          buildListTile('Filter', Icons.filter_alt_sharp, () {
            Navigator.of(context).pushNamed('/filters');
          })
        ],
      ),
    );
  }
}

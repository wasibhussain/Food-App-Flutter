import 'package:flutter/material.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favourites Screen'),centerTitle: true,
        ),
      body: const Center(
        child: Text('Favourites Screen'),
      ),
    );
  }
}

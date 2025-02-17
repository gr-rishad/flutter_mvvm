import 'package:flutter/material.dart';
import 'package:mvvm_learning/constants/my_app_constants.dart';
import 'package:mvvm_learning/constants/my_app_icons.dart';
import 'package:mvvm_learning/widgets/cached_image.dart';
import 'package:mvvm_learning/widgets/movies/movie_widget.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Movies'),
        actions: [
          IconButton(
            icon: const Icon(
              MyAppIcons.favorite,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              MyAppIcons.darkMode,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const MoviesWidget();
        },
      ),
    );
  }
}

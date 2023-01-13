import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals/data/dummy_data.dart';
import '../components/category_item.dart';

import 'package:flutter/material.dart';

class CategoriesScreens extends StatelessWidget {
  const CategoriesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vamos cozinhar?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView(
          /**
           * Sliver  é uma área com scroll no flutter
           * GridDelegateWithMaxCrossAxisExtent
           */
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          children: DUMMY_CATEGORIES.map((category) {
            return CategoryItem(category);
          }).toList(),
        ),
      ),
    );
  }
}

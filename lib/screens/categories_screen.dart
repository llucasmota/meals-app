import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals/data/dummy_data.dart';
import '../components/category_item.dart';

import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
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
    );
  }
}

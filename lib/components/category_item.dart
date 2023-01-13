import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals/models/category.dart';
import 'package:meals/utils/app_routes.dart';
import '../screens/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    //   // Retorna uma página(CategoriesMealsScreen)
    //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //     return CategoriesMealsScreen(
    //       category: category,
    //     );
    //   }));
    // }

    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    // funciona como um link que responde ao "click" do gesto
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [category.color.withOpacity(0.5), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}

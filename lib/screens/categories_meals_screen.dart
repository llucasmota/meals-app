import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  // final Category category;

  // const CategoriesMealsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.title}'),
      ),
    );
  }
}

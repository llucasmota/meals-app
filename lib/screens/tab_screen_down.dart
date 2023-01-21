import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreenDown extends StatefulWidget {
  const TabsScreenDown({Key? key}) : super(key: key);

  @override
  State<TabsScreenDown> createState() => _TabsScreenDownState();
}

class _TabsScreenDownState extends State<TabsScreenDown> {
  int _selectedScreenIndex = 0;

  final List<Map<String, Object>> _screens = [
    {'title': 'Lista de Categorias', 'screen': CategoriesScreen()},
    {'title': 'Lista de Favoritos', 'screen': FavoriteScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          )
        ],
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

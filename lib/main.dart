import 'package:flutter/material.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meal_detail_screen.dart';
import 'package:meals/utils/app_routes.dart';
import './screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: const ColorScheme(
          primary: Colors.pink,
          secondary: Colors.amber,
          onPrimary: Colors.white,
          onSecondary: Colors.amber,
          onSurface: Colors.white,
          background: Colors.white10,
          surface: Colors.transparent,
          brightness: Brightness.light,
          error: Colors.red,
          onError: Colors.red,
          onBackground: Colors.transparent,
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium:
                  const TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed'),
            ),
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEALS_DETAIL: (ctx) => MealDetailScreen()
      },
      // tratamento para rotas especificas
      // onGenerateRoute: (settings) {
      //   if (settings.name == 'alguma-coisa') {
      //     return null;
      //   } else if (settings.name == 'alguma-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return CategoriesScreen();
      //     });
      //   }
      // },
      // onUnknownRoute: (settings) {
      //   //tratamento para rotas desconhecidas
      //   return MaterialPageRoute(builder: (_) {
      //     return CategoriesScreen();
      //   });
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navegar é preciso!!'),
      ),
    );
  }
}

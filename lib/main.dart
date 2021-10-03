import 'package:flutter/material.dart';
import 'package:shopping_app/catalog_provider.dart';
import 'package:shopping_app/login_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider<CatalogProvider>(
      create: (_) => CatalogProvider(),
      child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


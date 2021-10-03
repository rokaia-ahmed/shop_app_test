import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/catalog_model.dart';

class CatalogProvider extends ChangeNotifier{
   late Icon icon ;
  List <String> cartList =[];
  double allPrice = 0;
  List<CatalogModels> models =[
    CatalogModels(Colors.red, 'Code Smell', 10),
    CatalogModels(Colors.pink, 'Control flow',20),
    CatalogModels(Colors.purple, 'interpreter' ,30),
    CatalogModels(Colors.deepPurple, 'Recursion',50),
    CatalogModels(Colors.blueAccent, 'Sprint',100),
    CatalogModels(Colors.blue, 'Heisenbug',60),
    CatalogModels(Colors.lightBlue, 'Spaghetti',10),
    CatalogModels(Colors.lightBlueAccent, 'Hydra Code',20),
    CatalogModels(Colors.green, 'Off-By-One',30),
    CatalogModels(Colors.greenAccent, 'Scope',20),
    CatalogModels(Colors.lightGreen, 'Call back',20),
  ];

 void addToCard(CatalogModels item){
    cartList.add(item.name);
   allPrice = allPrice+ item.price ;
   icon = Icon(Icons.check);
   notifyListeners();
  }
}
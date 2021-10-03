import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Cart.dart';
import 'package:shopping_app/catalog_provider.dart';

class CatalogScreen extends StatelessWidget {
  bool onPressed= false ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
                color: Colors.black
            ),
            backgroundColor: Colors.yellow,
            elevation: 0.0,
            title: Center(
              child: Text('Catalog',
               style: TextStyle(
                 fontSize: 25.0,
                 color: Colors.black,
                 fontWeight: FontWeight.w900
               ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                ),
                child: IconButton(
                  onPressed:(){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(context)=>CartScreen()),
                    );
                  } ,
                   icon:Icon(
                     Icons.shopping_cart,
                     color: Colors.black,
                     size: 30,
                   ) ,
                ),
              ),
            ],
          ),
          body: Consumer<CatalogProvider>(
            builder :(context,CatalogProvider catalogProvider ,widget) {
          return Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
          itemBuilder: (context,index)=>ListTile(
            leading:Container(
              color:catalogProvider.models[index].color ,
              height: 50,
              width: 50,
            ) ,
            title:Text(catalogProvider.models[index].name,
              style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ) ,
            ) ,
            trailing: TextButton(
              onPressed: (){
                catalogProvider.addToCard(catalogProvider.models[index]);
                onPressed = true ;
              },
              child: Text('ADD',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
          ),
          separatorBuilder: (context,index)=>SizedBox(
          height:15.0,
          ),
          itemCount:catalogProvider.models.length,
          ),
          );
          }

          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/catalog_provider.dart';
class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CatalogProvider>(
      builder:(context , catalogProvider ,_) {
        return Scaffold(
          appBar: AppBar(
            leading: BackButton(
                color: Colors.black
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text('Cart',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width:double.infinity ,
                  height: 500,
                  color: Colors.yellow,
                  child:Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.builder(
                        itemBuilder:(context ,index){
                          return Text('-'+catalogProvider.cartList[index],
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      itemCount:catalogProvider.cartList.length ,
                    ),
                  ) ,
                ),
              ),
              Container(
                width:double.infinity ,
                height:5,
                color: Colors.black,
              ),
              Expanded(
                child: Container(
                  width:double.infinity ,
                  height: 200,
                  color: Colors.yellow,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\$ ${catalogProvider.allPrice}',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      MaterialButton(onPressed: (){},
                        color: Colors.white,
                        child: Text('BUY'),
                      ),
                    ],
                  ) ,
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}

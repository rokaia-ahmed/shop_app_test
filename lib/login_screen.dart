import 'package:flutter/material.dart';
import 'package:shopping_app/catalog_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,

                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration:InputDecoration(
                        hintText: 'email',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText:true ,
                    keyboardType: TextInputType.visiblePassword,
                    decoration:InputDecoration(
                        hintText: 'password',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MaterialButton(
                    color: Colors.yellow,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>CatalogScreen()),
                      );
                    },
                    child:Text('ENTER') ,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

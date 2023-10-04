import 'package:flutter/material.dart';
import 'package:store/Screens/Update_product.dart';
import 'package:store/Screens/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      routes: {
        HomePage.id:(context)=> HomePage(),
        UpdateProductPage.id:(context) => UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
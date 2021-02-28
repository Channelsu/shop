import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/page/products_page.dart';
import 'package:shop/provider/shop_provider.dart';
import 'package:shop/page/cart_page.dart';
import 'package:shop/provider/shop_provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Shop';
  final state = ShopProvider();

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (_) => state,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        primaryColorDark: Colors.white,
      ),
      home: ProductsPage(), // CartPage(),
    ),
  );
}

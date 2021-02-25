import 'package:flutter/material.dart';
import 'package:shop/page/cart_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Shop';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.deepOrange,
    ),
    home: CartPage(),
  );
}

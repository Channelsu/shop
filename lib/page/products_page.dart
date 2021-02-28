import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart_item.dart';
import 'package:shop/page/cart_page.dart';
import 'package:shop/provider/shop_provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:shop/widget/cart_header_widget.dart';

import '../main.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xFFf6f5ee),
    appBar: AppBar(
      title: Text(MyApp.title, style: TextStyle(color: Colors.black),),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.filter_list, color: Colors.black,),
          onPressed: () {},
        ),
        SizedBox(width: 4),
      ],
    ),
    body: SlidingUpPanel(
      parallaxEnabled: true,
      parallaxOffset: 1,
      minHeight: 70,
      body: Container(),
      panelBuilder: (_) => CartPage(),
      collapsed: CartHeaderWidget(),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/cart_item.dart';
import 'package:shop/provider/shop_provider.dart';

class CartHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShopProvider>(context);

    return Container(
      decoration: BoxDecoration(color: Colors.black),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        children: <Widget>[
          Text('Cart', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),)
        ],
      ),
    );
  }
}
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
          Text('Cart', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
          SizedBox(width: 30,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: provider.items.values.map(buildCardItem).toList(),
              ),
            ),
          ),
          SizedBox(width: 12,),
          if(provider.items.isNotEmpty) buildItemCount(context)
        ],
      ),
    );
  }

  Widget buildCardItem(CartItem cardItem) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 4),
    child: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(cardItem.imgUrl),
    ),
  );

  Widget buildItemCount(BuildContext context) {
    final provider = Provider.of<ShopProvider>(context);

    return CircleAvatar(
      radius: 20,
      backgroundColor: Theme.of(context).primaryColor,
      child: Text(
        provider.itemCount.toString(),
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
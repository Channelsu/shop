import 'package:flutter/material.dart';
import 'package:shop/model/cart_item.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('マイカート', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28)),
                FlatButton(
                  child: Text('空にする'),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(child: Container(color: Colors.green, child: buildCardItems(context))),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('合計', style: TextStyle(color: Colors.white, fontSize: 18),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('320', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),),
                    SizedBox(width: 4,),
                    Text('円', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 24,),
            Container(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                shape: StadiumBorder(),
                child: Text('次へ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  Widget buildCardItems(BuildContext context) {
    return buildCartItem(
      CartItem(
        id: '1',
        title: 'モンスター',
        description: 'エナジードリンクです。',
        price: 180,
        imgUrl: 'assets/monster.png',
        quantity: 2,
      )
    );
  }

  Widget buildCartItem(CartItem cartItem) => ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(cartItem.imgUrl),
    ),
    title: Row(
      children: <Widget>[
        Text('${cartItem.quantity}個', style: TextStyle(color: Colors.white),),
        SizedBox(width: 10,),
        Expanded(
          child: Text(
            cartItem.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ),
      ],
    ),
    trailing: Text('${cartItem.price}円', style: TextStyle(color: Colors.white)),
  );
}
import 'package:flutter/material.dart';

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
            RaisedButton(
              color: Theme.of(context).primaryColor,
              shape: StadiumBorder(),
              child: Text('次へ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
              onPressed: () {},
            ),
          ],
        ),
      ),
      
    );
  }

  Widget buildCardItems(BuildContext context) {
    return Center(
      child: Text(
        'マイカートは空です',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
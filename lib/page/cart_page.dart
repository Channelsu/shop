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
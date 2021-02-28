import 'package:flutter/foundation.dart';
import 'package:shop/model/cart_item.dart';

class ShopProvider with ChangeNotifier {
  // 変数名にアンダーバーを付ける事でprivate変数になり、
  // このクラス内でしかアクセスできない
  Map<String, CartItem> _items;

  ShopProvider() {
    _items = {
      '1' : CartItem(
        id: '1',
        title: 'モンスター',
        description: 'エナジードリンクです。',
        price: 180,
        imgUrl: 'assets/monster.png',
        quantity: 2,
      ),
      '2' : CartItem(
        id: '2',
        title: 'マウンテンデュー',
        description: 'エナジードリンクです。',
        price: 200,
        imgUrl: 'assets/mountdew.png',
        quantity: 3,
      ),
    };
  }

  // ゲッター
  Map<String, CartItem> get items => _items;

  // セッター
  set items(Map<String, CartItem> value) {
    _items = value;
  }

}
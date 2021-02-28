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
      '3' : CartItem(
        id: '3',
        title: 'コカコーラ',
        description: 'ドリンクです。',
        price: 100,
        imgUrl: 'assets/cocacola.png',
        quantity: 3,
      ),
      '4' : CartItem(
        id: '4',
        title: 'ペプシコーラ',
        description: 'ドリンクです。',
        price: 100,
        imgUrl: 'assets/pepsi.png',
        quantity: 1,
      ),
      '5' : CartItem(
        id: '5',
        title: 'レッドブル',
        description: 'エナジードリンクです。',
        price: 210,
        imgUrl: 'assets/redbull.png',
        quantity: 3,
      ),
      '6' : CartItem(
        id: '6',
        title: 'セブンアップ',
        description: 'ドリンクです。',
        price: 150,
        imgUrl: 'assets/sevenup.png',
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

  int get itemCount => _items.length;

}
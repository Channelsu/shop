import 'package:flutter/foundation.dart';
import 'package:shop/model/cart_item.dart';

class ShopProvider with ChangeNotifier {
  // 変数名にアンダーバーを付ける事でprivate変数になり、
  // このクラス内でしかアクセスできない
  Map<String, CartItem> _items;

  ShopProvider() {
    _items = {};
  }

  // ゲッター
  Map<String, CartItem> get items => _items;

  // セッター
  set items(Map<String, CartItem> value) {
    _items = value;
  }

}
import 'package:meta/meta.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String imgUrl;
  final double price;

  const CartItem({this.id, this.title, this.quantity, this.imgUrl, this.price});
}
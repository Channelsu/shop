import 'package:meta/meta.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String imgUrl;
  final double price;

  const CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.imgUrl,
    @required this.price
  });

  CartItem copy({
    String id,
    String title,
    int quantity,
    String imgUrl,
    double price,
  }) =>
      CartItem(
        id: id ?? this.id,
        title: title ?? this.title,
        quantity: quantity ?? this.quantity,
        imgUrl: imgUrl ?? this.imgUrl,
        price: price ?? this.price,
      );
}
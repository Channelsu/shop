import 'package:meta/meta.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final String imgUrl;
  final int price;
  final String description;

  const CartItem({
    @required this.id,
    @required this.title,
    @required this.quantity,
    @required this.imgUrl,
    @required this.price,
    @required this.description,
  });

  CartItem copy({
    String id,
    String title,
    int quantity,
    String imgUrl,
    int price,
    String description,
  }) =>
      CartItem(
        id: id ?? this.id,
        title: title ?? this.title,
        quantity: quantity ?? this.quantity,
        imgUrl: imgUrl ?? this.imgUrl,
        price: price ?? this.price,
        description: description ?? this.description,
      );
}
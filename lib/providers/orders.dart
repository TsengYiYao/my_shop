import 'package:flutter/foundation.dart';
import 'package:my_shop/providers/cart.dart';

class OderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OderItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OderItem> _orders = [];

  List<OderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    DateTime now = DateTime.now();
    _orders.insert(
        0,
        OderItem(
          id: now.toString(),
          amount: total,
          products: cartProducts,
          dateTime: now,
        ));
  }
}

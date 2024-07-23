import 'package:addzone/provider/cart.dart';
import 'package:addzone/provider/product.dart';
import 'package:flutter/cupertino.dart';

class OrderItem {
  final String id;
  final List<CartItem> products;
  final double amount;
  final DateTime dateTime;
  OrderItem(
      {required this.id,
      required this.products,
      required this.amount,
      required this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orderItems {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartItems, double total) {
    _orders.insert(
        0,
        OrderItem(
            id: DateTime.now().toString(),
            products: cartItems,
            amount: total,
            dateTime: DateTime.now()));
    notifyListeners();
  }
}

import 'package:addzone/provider/cart.dart' show Cart;
import 'package:addzone/provider/orders.dart';
import 'package:addzone/widgets/cart_item.dart';
// import '../widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: cartItems.cartItems.length,
            itemBuilder: (context, i) => CartItem(
                cartItems.cartItems.values.toList()[i].id,
                cartItems.cartItems.keys.toList()[i],
                cartItems.cartItems.values.toList()[i].title,
                cartItems.cartItems.values.toList()[i].price,
                cartItems.cartItems.values.toList()[i].quantity),
          )),
          Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$${cartItems.totalAmount().toStringAsPrecision(4)}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  TextButton(
                      onPressed: () {
                        Provider.of<Orders>(context, listen: false).addOrder(
                            cartItems.cartItems.values.toList(),
                            cartItems.totalAmount());
                        cartItems.clearCart();
                      },
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 17),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

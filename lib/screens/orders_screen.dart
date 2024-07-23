import 'package:addzone/provider/orders.dart' show Orders;
import 'package:addzone/widgets/App_drawer.dart';
import 'package:addzone/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Details'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: ordersData.orderItems.length,
        itemBuilder: (context, index) =>
            OrderItem(ordersData.orderItems[index]),
      ),
    );
  }
}

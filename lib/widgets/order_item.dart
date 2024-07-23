import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../provider/orders.dart' as ord;
import 'package:intl/intl.dart';

class OrderItem extends StatefulWidget {
  final ord.OrderItem order;
  OrderItem(this.order);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${widget.order.amount}'),
            subtitle: Text(
                DateFormat('dd/MM/yyyy   hh:mm').format(widget.order.dateTime)),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
            ),
          ),
          if (isExpanded)
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: min(widget.order.products.length * 60.0, 200.0),
                child: ListView(
                  children: widget.order.products
                      .map(
                        (e) => Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  e.title,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price:\$${e.price}',
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Qty:${e.quantity}',
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(),
                          ],
                        ),
                      )
                      .toList(),
                ))
        ],
      ),
    );
  }
}

import 'package:addzone/screens/orders_screen.dart';
import 'package:addzone/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.amber,
            title: Text(
              'Hello,Buddy!',
              textAlign: TextAlign.center,
            ),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: Colors.black54,
            ),
            title: Text(
              "Shop",
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.black54,
            ),
            title: Text(
              "Orders",
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.black54,
            ),
            title: Text(
              "Manage Products",
              style: TextStyle(fontSize: 22),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}

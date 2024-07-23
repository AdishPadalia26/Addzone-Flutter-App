import 'package:addzone/provider/products_provider.dart';
import 'package:addzone/widgets/App_drawer.dart';
import 'package:addzone/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/manageproducts';
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: products.items.length,
            itemBuilder: ((context, index) => Column(
                  children: [
                    ProductList(products.items[index].title,
                        products.items[index].imageUrl),
                    Divider(),
                  ],
                ))),
      ),
    );
  }
}

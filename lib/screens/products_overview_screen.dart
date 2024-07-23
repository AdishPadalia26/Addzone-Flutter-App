import 'package:addzone/provider/cart.dart';
import 'package:addzone/provider/product.dart';
import 'package:addzone/screens/cart_screen.dart';
import 'package:addzone/widgets/App_drawer.dart';
import 'package:addzone/widgets/badge.dart';
import 'package:addzone/widgets/product_grid.dart';
import 'package:addzone/widgets/product_item.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../widgets/product_grid.dart';

enum Filter {
  favourites,
  all,
}

class ProductsOverviewScreen extends StatefulWidget {
  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopTon'),
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (value) {
                setState(() {
                  if (value == Filter.favourites) {
                    _showFavourites = true;
                  } else {
                    _showFavourites = false;
                  }
                });
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    const PopupMenuItem(
                      value: Filter.favourites,
                      child: Text('Favourites'),
                    ),
                    const PopupMenuItem(
                      value: Filter.all,
                      child: Text('All Products'),
                    ),
                  ]),
          Consumer<Cart>(
            builder: (context, value, ch) => Badge(
              value: value.productCount.toString(),
              color: Colors.deepOrangeAccent,
              child: ch as Widget,
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          )
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(_showFavourites),
    );
  }
}

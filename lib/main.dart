import 'package:addzone/provider/cart.dart';
import 'package:addzone/provider/orders.dart';
import 'package:addzone/provider/products_provider.dart';
import 'package:addzone/screens/cart_screen.dart';
import 'package:addzone/screens/orders_screen.dart';
import 'package:addzone/screens/product_details_screen.dart';
import 'package:addzone/screens/products_overview_screen.dart';
import 'package:addzone/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),
        ),
         ChangeNotifierProvider(
          create: (context) => Orders(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ShopTon',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          ).copyWith(secondary: Colors.deepOrangeAccent),
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName:((context) => CartScreen()),
          OrdersScreen.routeName:(context) => OrdersScreen(),
          UserProductsScreen.routeName:(context) => UserProductsScreen()
        },
      ),
    );
  }
}

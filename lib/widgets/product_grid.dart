import 'package:addzone/provider/products_provider.dart';
import 'package:addzone/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {
  final bool _showFavs;
  ProductGrid(this._showFavs);
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final loadedProducts =
        _showFavs ? productsData.favourties : productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: loadedProducts[index], child: ProductItem()),
      itemCount: loadedProducts.length,
    );
  }
}

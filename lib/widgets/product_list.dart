import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProductList extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProductList(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        trailing: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Row(children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
              color: Theme.of(context).colorScheme.primary,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
            ),
          ]),
        ));
  }
}

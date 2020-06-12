import 'package:flutter/material.dart';
import 'package:sunderban/database/items.dart';

class ItemScreen extends StatefulWidget {
  final Items item;

  ItemScreen({this.item});

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    var item = widget.item;

    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(item.imageUrl),
          ),
        ),
      ]),
    );
  }
}

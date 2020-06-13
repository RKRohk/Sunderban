import 'package:flutter/material.dart';
import 'package:sunderban/database/items.dart';
class Watchlist extends StatefulWidget {
  @override
  _WatchlistState createState() => _WatchlistState();
}

class _WatchlistState extends State<Watchlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: items.map<Widget>((e)  {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              child: ListTile(
                leading: Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(e.imageUrl),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0),
                          ]))
                  ),
                ),
                title: Text(e.item),
                trailing: Text("₹ ${e.mrp.toString()}"),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          title: Text(item.item),
          expandedHeight: 250.0,
          backgroundColor: Colors.grey,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("₹ ${item.mrp.toString()}",),
            background: Image.network(item.imageUrl),
          ),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: ListTile(
                    title: Text("About"),
                   subtitle: Text(item.desc),

                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: Row(
                          children: [
                            Text("Offers",textScaleFactor: 1.2,),
                            SizedBox(width: 10,),
                            FaIcon(FontAwesomeIcons.tags,color: Colors.black.withOpacity(0.6),),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: Row(
                          children: [
                            FaIcon(FontAwesomeIcons.amazon,color: Colors.black.withOpacity(0.6),),
                            SizedBox(width: 10,),
                            FaIcon(FontAwesomeIcons.rupeeSign,color: Colors.black.withOpacity(0.6),size: 20,),
                            Text(item.price1.toString(),textScaleFactor: 1.5,),
                          ],
                        ),

                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: Row(
                          children: [
                            FaIcon(FontAwesomeIcons.bullseye,color: Colors.black.withOpacity(0.6),),
                            SizedBox(width: 10,),
                            FaIcon(FontAwesomeIcons.rupeeSign,color: Colors.black.withOpacity(0.6),size: 20,),
                            Text(item.price2.toString(),textScaleFactor: 1.5,),
                          ],
                        ),

                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                        child: Row(
                          children: [
                            FaIcon(FontAwesomeIcons.ebay,color: Colors.black.withOpacity(0.6),),
                            SizedBox(width: 10,),
                            FaIcon(FontAwesomeIcons.rupeeSign,color: Colors.black.withOpacity(0.6),size: 20,),
                            Text(item.price3.toString(),textScaleFactor: 1.5,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                width: double.infinity,
                child: MaterialButton(
                  elevation: 5,
                  height: 60,
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Add to Watchlist"),
                  onPressed: () => {},
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

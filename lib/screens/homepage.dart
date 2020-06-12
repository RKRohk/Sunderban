import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sunderban/database/items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Carousel(
                showIndicator: false,
                images: citems
                    .map((e) => Image.network(
                          e.imageUrl,
                        ))
                    .toList(),
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(seconds: 2),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: items.map((e) {
                  return GestureDetector(
                      onTap: () {
                        print(e.item);
                      },
                      child: getStyledCard(e));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  AspectRatio getStyledCard(Items e) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: Offset(1.0, 6.0),
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(e.imageUrl), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              e.item,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

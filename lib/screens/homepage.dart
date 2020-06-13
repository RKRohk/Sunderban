import 'package:animations/animations.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sunderban/database/items.dart';
import 'package:sunderban/screens/itemscreen.dart';

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
                  return OpenContainer(
                    transitionDuration: Duration(milliseconds: 500),
                    openBuilder: (BuildContext context, VoidCallback action) =>
                        ItemScreen(
                      item: e,
                    ),
                    closedBuilder:
                        (BuildContext context, VoidCallback action) =>
                            getStyledCard(
                      item: e,
                    ),
                    tappable: true,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class getStyledCard extends StatefulWidget {
  Items item;

  getStyledCard({this.item});

  @override
  _getStyledCardState createState() => _getStyledCardState();
}

class _getStyledCardState extends State<getStyledCard> {
  Items e;
  bool active = false;
  var _icon;
  @override
  void initState() {
    e = widget.item;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

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
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: !active ? FaIcon(FontAwesomeIcons.heart,) : FaIcon(FontAwesomeIcons.solidHeart, color: Colors.red,),
                  onPressed: () {
                    setState(() {
                      active = !active;
                      print(active);
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  e.item,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

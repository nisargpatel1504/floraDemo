import 'package:badges/badges.dart';
import 'package:fauna/Model/cart.dart';
import 'package:fauna/Model/item.dart';
import 'package:fauna/Provider/counter_provider.dart';
import 'package:fauna/Screens/details/body_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;
  const DetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.color,
      appBar: AppBar(
        leading: SizedBox(
          height: 40,
          width: 40,
          child: FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        elevation: 0,
        backgroundColor: item.color,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          Badge(
            position: BadgePosition.topEnd(top: 3, end: 18),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent:
                Consumer<CartModel>(builder: (context, cartCounter, child) {
              return Text(
                "${cartCounter.count}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              );
            }),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                padding: EdgeInsets.only(right: 30.0),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                }),
          ),
          SizedBox(
            width: 20 / 2,
          ),
        ],
      ),
      body: BodyOfDetailScreen(
        item: item,
      ),
    );
  }
}

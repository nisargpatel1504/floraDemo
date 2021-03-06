import 'package:flutter/material.dart';
import 'package:fauna/Model/cart.dart';

const ktxtColor = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.red,
  fontFamily: 'Ubuntu',
);

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key, required this.cart}) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          SizedBox(
            width: 120.0,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(
                    "https://www.freepnglogos.com/uploads/flower-bouquet-png/flower-bouquet-round-transparent-png-stick-9.png"),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 8,
          ),
          Column(
            children: [
              Text(
                cart.item.title,
                style: ktxtColor,
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "\$${cart.item.price}",
                  style: ktxtColor,
                  children: [
                    TextSpan(
                      text: "x${cart.numOfItem}",
                      style: ktxtColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

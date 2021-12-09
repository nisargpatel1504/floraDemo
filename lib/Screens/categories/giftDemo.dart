import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  "https://cdn.pixabay.com/photo/2016/03/26/22/22/happy-1281590__340.jpg",
  "https://cdn.pixabay.com/photo/2016/03/26/22/22/happy-1281590__340.jpg",
  "https://cdn.pixabay.com/photo/2016/03/26/22/22/happy-1281590__340.jpg",
];

class GiftDemo extends StatefulWidget {
  const GiftDemo({Key? key}) : super(key: key);

  @override
  _GiftDemoState createState() => _GiftDemoState();
}

class _GiftDemoState extends State<GiftDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                aspectRatio: 3.0,
                enlargeCenterPage: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

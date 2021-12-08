import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/Home/home.dart';
import 'Screens/Login/login.dart';
import 'Screens/Login/signup.dart';
import 'Screens/Orders/cart_screen.dart';
import 'Screens/categories/favorite.dart';
import 'Screens/categories/flowers.dart';
import 'Screens/categories/gifts.dart';
import 'Screens/details/shipping_details.dart';
import 'Screens/welcome.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:provider/provider.dart';
import 'package:fauna/Provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(600),
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: "Fauna",
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/gifts': (context) => Gifts(),
        '/flowers': (context) => Flowers(),
        '/favorite': (context) => Favorite(),
        '/cart': (context) => CartScreen(),
        '/shipping': (context) => Shipping(),
      },
    );
  }
}

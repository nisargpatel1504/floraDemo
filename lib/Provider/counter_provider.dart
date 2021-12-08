import 'package:flutter/cupertino.dart';
import 'package:fauna/Model/cart.dart';
import '../Model/cart.dart';
import '../Model/item.dart';

class CartModel with ChangeNotifier {
  int get count {
    return demoCarts.length;
  }
}

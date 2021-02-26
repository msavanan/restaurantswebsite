import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class OrderMenu extends ChangeNotifier {
  double price = 0;
  String menuTitle = "";
  int index = 0;
  int qty = 0;
  List<Map> orderList = [
    {"price": "", "menuTitle": "", "index": 1, "qty": 0},
    {"price": "", "menuTitle": "", "index": 2, "qty": 0},
    {"price": "", "menuTitle": "", "index": 3, "qty": 0},
    {"price": "", "menuTitle": "", "index": 4, "qty": 0},
    {"price": "", "menuTitle": "", "index": 5, "qty": 0},
    {"price": "", "menuTitle": "", "index": 6, "qty": 0},
    {"price": "", "menuTitle": "", "index": 7, "qty": 0},
  ];

  setMenu({orderPrice, orderMenuTitle, orderIndex}) {
    menuTitle = orderMenuTitle;
    price = orderPrice;
    orderList[index + 1]["menuTitle"] = orderMenuTitle;
    orderList[index + 1]["price"] = orderPrice;
    orderList[index + 1]["qty"] = qty;
    notifyListeners();
  }
}

addMenu({image, desc, price, menuTitle, index}) {
  final menuList = FirebaseFirestore.instance.collection('menulist');
  menuList.add({
    "image": image,
    "desc": desc,
    "price": price,
    "menutitle": menuTitle,
    "index": index
  });
}

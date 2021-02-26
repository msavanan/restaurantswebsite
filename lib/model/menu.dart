import 'package:cloud_firestore/cloud_firestore.dart';

class Menu {
  double price;
  String desc;
  String menuTitle;
  String image;
}

addMenu({image, desc, price, menuTitle}) {
  final menuList =
      FirebaseFirestore.instance.collection('menulist');
  menuList.add({
    "image": image,
    "desc": desc,
    "price": price,
    "menutitle": menuTitle
  });
}

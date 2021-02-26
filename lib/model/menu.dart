import 'package:cloud_firestore/cloud_firestore.dart';

class Menu {
  double price;
  String desc;
  String menuTitle;

  void getMenu() async {
    final menu = await FirebaseFirestore.instance;
    final documents = await menu.collection('menu').get();
  }
}

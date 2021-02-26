import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurantswebsite/cart/Cart.dart';
import 'package:restaurantswebsite/model/menu.dart';
import 'package:restaurantswebsite/widgets/listViewBuilder.dart';
import 'package:restaurantswebsite/constants/menudata.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  final amount = 0;
  final String desc =
      'Anjappar Veg Meals Enough To Feed 1 People Easily! Chettinad Flavour Anjappar Meals. '
      'The Meal Box Comes With Items:- Sweet, White Rice, Chicken Masala [2 Pcs]Sambar, Rasam, Koottu, '
      'Poriyal, Curd, Appalam, Pickle, Ghee, Dal Powder. Its Satisfying And Delicious Comes With A Banana Leaf.';
  final double price = 200;
  final String image = 'assets/33727e20cf97c75cf9d6230ac30b1c0e.jpg';
  final String menuTitle = 'Single Carrier Non Veg Meals';

  @override
  void initState() {
    super.initState();
    checkMenu();
  }

  void checkMenu() async {
    final snapshots =
        await FirebaseFirestore.instance.collection('menulist').get();

    if (snapshots.docs.isEmpty) {
      createMenu();
    }
  }

  void createMenu() {
    menuData.forEach((k, v) {
      final menuList = FirebaseFirestore.instance.collection('menulist');
      menuList.add({
        "price": v["price"],
        "desc": v["desc"],
        "image": v["image"],
        "menutitle": v["menuTitle"],
        "index": v["index"]
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider<OrderMenu>(
      create: (context) => OrderMenu(),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: width * 0.7,
              child: ListTileBuilder(),
            ),
            Cart()
          ],
        ),
      ),
    );
  }
}

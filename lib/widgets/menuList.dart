import 'package:flutter/material.dart';
import 'package:restaurantswebsite/cart/Cart.dart';
import 'package:restaurantswebsite/widgets/menu_tile.dart';

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
  final String image =
      'assets/33727e20cf97c75cf9d6230ac30b1c0e.jpg';
  final String menuTitle = 'Single Carrier Non Veg Meals';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: width * 0.7,
            child: ListView(
                padding: EdgeInsets.only(top: 10),
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                          image: image,
                          desc: desc,
                          price: price,
                          menuTitle: menuTitle)),
                ]),
          ),
          Cart()
        ],
      ),
    );
  }
}

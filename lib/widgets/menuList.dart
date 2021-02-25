import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurantswebsite/widgets/menu_tile.dart';

class MenuList extends StatefulWidget {
  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
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
                      child: MenuTile()),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile()),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile()),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile()),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile()),
                  Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile()),
                ]),
          ),
          Text(
            'Cart Empty',
            style: TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:restaurantswebsite/cart/qty_btn.dart';

class CartCard extends StatefulWidget {
  final menuTxt;
  CartCard({this.menuTxt});
  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  double price = 200;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        widget.menuTxt,
        softWrap: true,
      ),
      Padding(padding: EdgeInsets.all(2)),
      QtyBtn(),
      Padding(padding: EdgeInsets.all(2)),
      Text('\u20b9 $price')
    ]);
  }
}

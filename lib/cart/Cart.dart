import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurantswebsite/model/menu.dart';

import 'cart_card.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  double totalPrice = 200;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Cart Empty',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            CartCard(
              menuTxt: Provider.of<OrderMenu>(context, listen: true).menuTitle,
              price: Provider.of<OrderMenu>(context, listen: true).price,
              //menuTxt: Provider.of<OrderMenu>(context, listen: true).menuTitle,
              //price: Provider.of<OrderMenu>(context, listen: true).price,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "\u20b9 $totalPrice ",
              style: TextStyle(fontSize: 25),
            )
          ],
        )
      ],
    );
  }
}

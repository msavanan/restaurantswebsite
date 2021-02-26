import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurantswebsite/model/menu.dart';

import 'cart_card.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    double price = Provider.of<OrderMenu>(context, listen: false).price;
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
            price != 0
                ? CartCard(
                    menuTxt:
                        Provider.of<OrderMenu>(context, listen: true).menuTitle,
                    price: Provider.of<OrderMenu>(context, listen: true).price,
                  )
                : Container(
                    height: 50,
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
              "\u20b9 ${Provider.of<OrderMenu>(context, listen: true).price} ",
              style: TextStyle(fontSize: 25),
            )
          ],
        )
      ],
    );
  }
}

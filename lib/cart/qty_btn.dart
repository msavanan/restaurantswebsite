import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurantswebsite/model/menu.dart';

class QtyBtn extends StatefulWidget {
  @override
  _QtyBtnState createState() => _QtyBtnState();
}

class _QtyBtnState extends State<QtyBtn> {
  @override
  Widget build(BuildContext context) {
    int qty = Provider.of<OrderMenu>(context, listen: false).qty + 1;
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(children: [
        MaterialButton(
            minWidth: 5,
            onPressed: () {
              setState(() {
                if (qty > 1) {
                  qty = qty - 1;
                }
              });
            },
            child: Text('-')),
        Text(qty.toString()),
        MaterialButton(
            minWidth: 5,
            onPressed: () {
              // Provider.of<OrderMenu>(context, listen: false).qty += 1;
            },
            child: Text('+'))
      ]),
    );
  }
}

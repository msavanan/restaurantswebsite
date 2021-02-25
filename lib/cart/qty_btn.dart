import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QtyBtn extends StatefulWidget {
  @override
  _QtyBtnState createState() => _QtyBtnState();
}

class _QtyBtnState extends State<QtyBtn> {
  int qty = 10;
  @override
  Widget build(BuildContext context) {
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
            child: Text('-') // Icon(Icons.remove),
            ),
        Text(qty.toString()),
        MaterialButton(
            minWidth: 5,
            onPressed: () {
              setState(() {
                qty = qty + 1;
              });
            },
            child: Text('+') //Icon(Icons.add),
            )
      ]),
    );
  }
}

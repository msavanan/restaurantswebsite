import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final String desc;
  final double price;
  final String image;
  final String menuTitle;

  MenuTile(
      {this.menuTitle, this.image, this.desc, this.price});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(image: AssetImage(image)),
      //Image(image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_208,h_208,c_fit/woozgsqbzjf7po7v2lye'),),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                menuTitle,
                style:
                    TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\u20b9 $price",
                style:
                    TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                desc,
                softWrap: true,
                maxLines: 4,
              ),
            ]),
      ),
      SizedBox(
        width: 10,
      ),
      MaterialButton(
        color: Colors.green,
        height: 50,
        minWidth: 60,
        onPressed: () {},
        child: Text('Add +'),
      )
    ]);
  }
}

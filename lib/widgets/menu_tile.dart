import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(
          image: AssetImage(
              'assets/33727e20cf97c75cf9d6230ac30b1c0e.jpg')),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Single Carrier Non Veg Meals',
                style:
                    TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\u20b9 200",
                style:
                    TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Anjappar Veg Meals Enough To Feed 1 People Easily! Chettinad Flavour Anjappar Meals. The Meal Box Comes With Items:- Sweet, White Rice, Chicken Masala [2 Pcs]Sambar, Rasam, Koottu, Poriyal, Curd, Appalam, Pickle, Ghee, Dal Powder. Its Satisfying And Delicious Comes With A Banana Leaf.',
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

/*Container(
child: Text(
'Anjappar Veg Meals Enough To Feed 1 People Easily! Chettinad Flavour Anjappar Meals. The Meal Box Comes With Items:- Sweet, White Rice, Chicken Masala [2 Pcs]Sambar, Rasam, Koottu, Poriyal, Curd, Appalam, Pickle, Ghee, Dal Powder. Its Satisfying And Delicious Comes With A Banana Leaf.',
softWrap: true,
maxLines: 10,
),
),*/

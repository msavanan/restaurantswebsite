import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'menu_tile.dart';

class ListTileBuilder extends StatelessWidget {
  final menuinstance =
      FirebaseFirestore.instance.collection('menulist');
  var menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 10, right: 10, top: 8, bottom: 0),
      child: StreamBuilder(
          stream: menuinstance.snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.size,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10),
                      child: MenuTile(
                        menuTitle: snapshot.data.docs[index]
                            ["menutitle"],
                        desc: snapshot.data.docs[index]
                            ["desc"],
                        image: snapshot.data.docs[index]
                            ["image"],
                        price: snapshot.data.docs[index]
                            ["price"],
                      ),
                    );
                  });
            } else {
              return Container();
            }
          }),
    );
  }
}
/*
child: FutureBuilder(builder: (context, snapshot) {}),
return ListView.builder(
itemCount: menuinstance.snapshots().length,
itemBuilder: (context, int index) {
return MenuTile(
image: snapshot['image'],
desc: snapshot.docs[index]['desc'],
price: snapshot.docs[index]['price'],
menuTitle: snapshot.docs[index]
['menutitle']);
});*/

import 'package:flutter/material.dart';
import 'package:restaurantswebsite/login/login_screen.dart';

class blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(50),
          child: Column(children: [
            Text(
              "Adai Recipe\n",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "A south indian savoury pan cake recipe prepared mainly with combination of lentils and spices. it is a healthy and protein packed dish which can be enjoyed for morning breakfast with coconut chutney. unlike the traditional dosa recipes which are thicker and prepared with rice and urad dal, adai dosa is thick and heavier with rice and combination of lentils with spices.\n",
              style: TextStyle(fontSize: 16),
            ),
            Image(
              image: AssetImage(
                "assets/adai-dosai.jpeg",
              ),
            ),
          ])),
    );
  }
}

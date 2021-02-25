import 'package:flutter/material.dart';
import 'package:restaurantswebsite/contact/contact_form.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
              top: 5, bottom: 5, left: 20, right: 20),
          child: Text(
            'Contact US',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                left: 20, right: 20, bottom: 5),
            color: Colors.grey,
            height: 1),
        Expanded(child: ContactForm())
      ],
    );
  }
}

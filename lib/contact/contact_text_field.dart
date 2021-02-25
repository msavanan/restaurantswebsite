import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  ContactTextField(
      {this.onSaved,
      this.validator,
      this.hintTxt,
      this.labelTxt});
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final String hintTxt;
  final String labelTxt;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      autocorrect: false,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelTxt,
        hintText: hintTxt,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
    );
  }
}

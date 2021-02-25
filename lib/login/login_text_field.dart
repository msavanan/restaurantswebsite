import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  LoginTextField(
      {this.onSaved,
      this.validator,
      this.hintTxt,
      this.obscureTxt = false,
      this.icon});
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final String hintTxt;
  final bool obscureTxt;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      autocorrect: false,
      obscureText: obscureTxt,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        icon: icon,
        hintText: hintTxt,
        filled: true,
        fillColor: Colors.white,
        /*border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(5.0),
            ),
          ),*/
      ),
    );
  }
}

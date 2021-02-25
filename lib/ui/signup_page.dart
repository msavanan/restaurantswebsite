import 'package:flutter/material.dart';
import 'package:restaurantswebsite/login/login_screen.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: LoginPage(
        setPage: true,
      )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurantswebsite/routes/routes.dart';
import 'package:restaurantswebsite/ui/signIn_page.dart';
import 'package:restaurantswebsite/ui/contact_page.dart';
import 'package:restaurantswebsite/ui/home_page.dart';
import 'package:restaurantswebsite/ui/blog.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeSignIn:
        return MaterialPageRoute(builder: (_) => SignInPage());
        break;
      case routeSignUp:
        return MaterialPageRoute(builder: (_) => blog());
        break;
      case routeContacts:
        return MaterialPageRoute(builder: (_) => ContactPage());
        break;
    }
  }
}

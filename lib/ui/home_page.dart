import 'package:flutter/material.dart';
import 'package:restaurantswebsite/widgets/menuList.dart';
import 'package:restaurantswebsite/widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SearchBar(), MenuList()],
    );
  }
}

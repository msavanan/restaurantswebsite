import 'package:flutter/material.dart';
import 'package:restaurantswebsite/widgets/navigation_bar.dart';
import 'package:restaurantswebsite/widgets/search_bar.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavigationBar(),
          Expanded(child: widget.child),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
                'Copyright Reserved \u00a9 2020. All Rights Reserved. Developed by Saravanan'),
          )
        ],
      ),
    );
  }
}

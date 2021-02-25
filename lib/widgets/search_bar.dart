import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBar createState() => _SearchBar();
}

class _SearchBar extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 35,
            child: SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,
                        color: Colors.black),
                    hintText: "Search...",
                    hintStyle:
                        TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide())),
                onTap: () {},
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 10,
            child: SizedBox(
              width: 100,
              height: 50,
              child: MaterialButton(
                height: 50,
                onPressed: () {},
                color: Colors.green,
                child: Text('Find Food'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

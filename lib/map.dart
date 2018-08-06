import 'package:flutter/material.dart';
import 'package:parkerapp/summary.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
              })
        ],
      ),
      body: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          print("ok");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SummaryPage(),
            ),
          );
        },
        child: Image.asset(
          "asset/map.png",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

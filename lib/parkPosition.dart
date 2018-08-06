import 'package:flutter/material.dart';

class ParkPositionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParkPositionState();
  }
}

class _ParkPositionState extends State<ParkPositionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plan"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
          Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Text(
            "Parking position",
            style:
            TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ),
        TextField(
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.only(top: 60.0),
          child: RaisedButton(
            color: Color.fromRGBO(255, 133, 133, 1.0),
            onPressed: () {
              print("Park position");
              Navigator.pop(context);
            },
            child: Text(
              'Ok',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    ),
    );
  }
}

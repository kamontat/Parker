import 'package:flutter/material.dart';
import 'package:parkerapp/root.dart';

class ParkPage extends StatefulWidget {
  @override
  _ParkState createState() {
    return _ParkState();
  }
}

class _ParkState extends State<ParkPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60.0, left: 40.0, right: 40.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "License plate: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "ษณ1234",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Parking lot number: ",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "G13",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.0),
              child: RaisedButton(
                color: Color.fromRGBO(255, 133, 133, 1.0),
                onPressed: () {
                  print("Confirm!");
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (c) => RootPage(0)));
                },
                child: Text("Confirm parking!", style: TextStyle(color: Colors.white, fontSize: 16.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

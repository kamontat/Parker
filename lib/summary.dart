import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: Container(
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
                          "Location: ",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          "Siam Paragon",
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Est. Price: ",
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          "20 ฿",
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
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Text("Confirm!", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

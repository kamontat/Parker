import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, i) {
            if (i == 0) {
              return _SuppleNotification();
            } else {
              return _DemendNotification();
            }
          }),
    );
  }
}

class _SuppleNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("your parking lot is on demend by ษณ1234"),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    print("ok");
                  },
                  child: Text("OK"),
                  textColor: Colors.white,
                  color: Colors.green,
                ),
                FlatButton(
                  onPressed: () {
                    print("deny");
                  },
                  child: Text("Deny"),
                  textColor: Colors.white,
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DemendNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          "Your request is accepted at 'G13'.",
          style: TextStyle(fontSize: 18.0),
        ),
        subtitle: Text(
          "Previous car license plate is ทธ4321",
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}

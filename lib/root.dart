import 'package:flutter/material.dart';
import 'package:parkerapp/home.dart';
import 'package:parkerapp/notification.dart';
import 'package:parkerapp/park.dart';
import 'package:parkerapp/setting.dart';

class RootPage extends StatefulWidget {
  var index = 0;

  RootPage(this.index);

  @override
  _RootState createState() {
    return _RootState(index);
  }
}

class _RootState extends State<RootPage> {
  var index = 0;
  Widget body;

  _RootState(index) {
    this.index = index;
    this.body = HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          print("index: " + i.toString());
          setState(() {
            this.index = i;
            switch (i) {
              case 0:
                body = HomePage();
                break;
              case 1:
                body = ParkPage();
                break;
              case 2:
                body = SettingPage();
                break;
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.blue : Colors.black,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                color: index == 0 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_car_wash,
              color: index == 1 ? Colors.blue : Colors.black,
            ),
            title: Text(
              "Park",
              style: TextStyle(
                color: index == 1 ? Colors.blue : Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: index == 2 ? Colors.blue : Colors.black,
            ),
            title: Text(
              "Setting",
              style: TextStyle(
                color: index == 2 ? Colors.blue : Colors.black,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Parker"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              })
        ],
      ),
      body: body,
    );
  }

  updateIndex(index) {
    this.setState(() {
      this.index = index;
    });
  }
}

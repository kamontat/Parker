import 'package:flutter/material.dart';
import 'package:map_view/map_view.dart';
import 'package:parkerapp/map.dart';
import 'package:parkerapp/parkPosition.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("asset/depart.png"),
              onPressed: () {
                print("Depart");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapPage()));
//                var _mapView = new MapView();
//                _mapView.show(
//                  MapOptions(
//                      mapViewType: MapViewType.normal,
//                      showUserLocation: true,
//                      title: "Hello"),
//                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.all(10.0),
              child: Image.asset("asset/find.png"),
              onPressed: () {
                print("Find");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ParkPositionPage();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:parkerapp/root.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 174, 157, 1.0),
      body: Container(
        padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(1.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "asset/logo.png",
                    height: 150.0,
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 18.0),
                    decoration: InputDecoration(
                      labelText: 'License plate',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Wrong plate';
                      }
                    },
                  ),
                  TextFormField(
                    style: TextStyle(fontSize: 18.0),
                    decoration: InputDecoration(
                      labelText: 'Account',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter validate account';
                      }
                    },
                  ),
                  Padding(padding: const EdgeInsets.all(10.0)),
                  RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return RootPage(0);
                        }));
                      }
                    },
                    color: Color.fromRGBO(255, 133, 133, 1.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

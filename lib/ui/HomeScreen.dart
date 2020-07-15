import 'package:flutter/material.dart';

import 'ResultsScreen.dart';

//dicas -https://medium.com/flutter-comunidade-br/10-dicas-de-produtividade-no-flutter-utilizando-android-studio-38d2bbcc9a92
class HomeScreen extends StatelessWidget {
  TextEditingController _username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            //color: Colors.black,
            width: double.maxFinite,
            // height: 300.0,
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 120.0,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(120.0))),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 30.0,
                ),
                TextField(
                    controller: _username,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1.0)),
                        hintText: 'username',
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.black))),
                Container(
                  height: 10.0,
                ),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  minWidth: double.maxFinite,
                  height: 50.0,
                  child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text("Buscar", style: TextStyle(fontSize: 18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultsScreen(
                                    username: _username.value.text)));
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

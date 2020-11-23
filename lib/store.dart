import 'package:flutter/material.dart';

class _StorePageWidgetState extends State<StorePageWidget> {
  @override
  Widget build (BuildContext txt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Store"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}
class StorePageWidget extends StatefulWidget {
  @override
  _StorePageWidgetState createState() => _StorePageWidgetState();
}
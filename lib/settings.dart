import 'package:flutter/material.dart';

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Settings"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}
class SettingsPageWidget extends StatefulWidget {
  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}
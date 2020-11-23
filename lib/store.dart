import 'package:flutter/material.dart';

class _StorePageWidgetState extends State<StorePageWidget> {
  @override
  Widget build (BuildContext txt) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Store"),
      ),
      body:
        ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
           ListTile(
             leading: Image(image: AssetImage("assets/weed.jpg")),
             title: Text("Test"),
             trailing: Text(5.toString()),
             subtitle: Text(5.toString()+ " Kosten BITCH"),
           ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Test"),
              trailing: Text(5.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Test"),
              trailing: Text(5.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Test"),
              trailing: Text(5.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Test"),
              trailing: Text(5.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Test"),
              trailing: Text(5.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
            ),
          ],
      ),
    );
  }
}
class StorePageWidget extends StatefulWidget {
  @override
  _StorePageWidgetState createState() => _StorePageWidgetState();
}
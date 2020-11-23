import 'package:biggernumber/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
import 'store.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: PageViewEmpire(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();

}
class _HomePageWidgetState extends State<HomePageWidget> {
  double weedInGram = 0.00;
  double clickWeight = 0.01;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              child: Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/weed.jpg"),
                        fit: BoxFit.cover),
                  )),
              onTap: () {
                weedInGram += clickWeight;
                setState(() {});
              }),
          Container(
            margin: const EdgeInsets.only(top: 70.0),
            child: Text(
              'Weed in Grams: ' + weedInGram.toStringAsFixed(2),
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      ),
    );
  }
}





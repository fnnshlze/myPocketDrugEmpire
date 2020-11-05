import 'package:flutter/material.dart';
import 'dart:math';

main() {
  runApp(MyApp());
}

class ChangableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyWeedClickerState();
  }
}

class MyWeedClickerState extends State {
  double weedInGram = 0.00;
  double clickWeight = 0.01;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyWeedClicker'),
        ),
        body: ChangableWidget(),
      ),
    );
  }
}

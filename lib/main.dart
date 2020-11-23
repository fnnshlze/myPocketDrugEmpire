import 'dart:async';
import 'package:biggernumber/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'store.dart';
import 'init.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  User user = new User();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: PageViewEmpire(user),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  User user = new User();
  HomePageWidget(User user, {Key key}) : super(key: key){
   this.user = user;
  }
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState(user);

}
class _HomePageWidgetState extends State<HomePageWidget> {
  User user = new User();
  _HomePageWidgetState(User user){
    this.user = user;
    this.wpsBox = user.getBoxWps();
    this.weedInGram = user.weedInGram;
  }
  double weedInGram;
  double clickWeight = 0.01;
  double wpsBox;

  @override
  void initState() {
    new Timer.periodic(Duration(seconds: 1), (Timer t) {
      user.weedInGram+=wpsBox;
      setState(() {});
    });
    super.initState();
  }

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
                user.weedInGram += clickWeight;
                setState(() {});
              }),
          Container(
            margin: const EdgeInsets.only(top: 70.0),
            child: Text(
              'Weed in Grams: ' + user.weedInGram.toStringAsFixed(2),
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
      ),
    );
  }
}





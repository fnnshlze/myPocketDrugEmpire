import 'dart:async';
import 'package:biggernumber/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'store.dart';
import 'user.dart';

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
  double clickWeight = 0.1;
  Timer _timer;

  _HomePageWidgetState(User user){
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 100.0),
            child: Text(
              'MyWeedClicker',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
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
                user.increaseWeedStoredBy(clickWeight);
                setState(() {});
              }),
          Container(
            margin: const EdgeInsets.only(top: 70.0),
            child: Text(
              'Weed in Grams: ' + user.getWeedStored().toStringAsFixed(2),
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Weed per Second: ' + user.getWps().toStringAsFixed(2),
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      ),
    );
  }

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    super.dispose();
  }
}





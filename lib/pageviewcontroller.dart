import 'dart:async';

import 'package:biggernumber/user.dart';
import 'package:biggernumber/main.dart';
import 'package:biggernumber/store.dart';
import 'package:flutter/material.dart';

class PageViewEmpire extends StatefulWidget {
  User user = new User();
  PageViewEmpire(User user){
    this.user = user;
  }

  @override
  _PageViewState createState() => _PageViewState(user);
}

class _PageViewState extends State<PageViewEmpire> {
  User user = new User();
  _PageViewState(User user){
    this.user = user;
  }

  Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      user.increaseWeedStoredBy(user.getWps());
    });
    super.initState();
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
    _controller.dispose();
    super.dispose();
  }

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        HomePageWidget(user),
        StorePageWidget(user),
      ],
    );
  }
}
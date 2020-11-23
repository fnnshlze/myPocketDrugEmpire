import 'package:biggernumber/init.dart';
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

  PageController _controller = PageController(
    initialPage: 0,
  );


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
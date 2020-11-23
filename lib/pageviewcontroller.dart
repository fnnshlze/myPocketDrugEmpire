import 'package:biggernumber/main.dart';
import 'package:biggernumber/settings.dart';
import 'package:biggernumber/store.dart';
import 'package:flutter/material.dart';

class PageViewEmpire extends StatefulWidget {
  @override
  _PageViewState createState() => _PageViewState();
}

class _PageViewState extends State<PageViewEmpire> {
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
        HomePageWidget(),
        StorePageWidget(),
        SettingsPageWidget(),
      ],
    );
  }
}
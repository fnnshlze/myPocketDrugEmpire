import 'dart:math';

import 'package:biggernumber/pageviewcontroller.dart';
import 'package:flutter/material.dart';

class Building {

  int _count = 0;

  double _baseWps;
  double _baseCost;

  int get count => _count;

  getWps(){
    return _baseWps*_count;
  }
  getCost(){
    return _baseCost + _count*_baseCost;
  }
  void increaseCount() {
    _count++;
  }
}

class HomeGrowBox extends Building {
  double _baseWps = 0.01;
  double _baseCost = 1;
}
class Dealer extends Building {
  double _baseWps = 0.04;
  double _baseCost = 3;
}
class Botanists extends Building {
  double _baseWps = 0.1;
  double _baseCost = 10;
}
class WareHouse extends Building {
  double _baseWps = 1;
  double _baseCost = 50;
}
class Plantation extends Building {
  double _baseWps = 6;
  double _baseCost = 100;
}
class Port extends Building {
  double _baseWps = 20;
  double _baseCost = 250;
}
class Country extends Building {
  double _baseWps = 50;
  double _baseCost = 1000;
}
class Planet extends Building {
  double _baseWps = 100;
  double _baseCost = 5000;
}


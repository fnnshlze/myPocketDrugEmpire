import 'dart:math';

import 'package:biggernumber/pageviewcontroller.dart';
import 'package:flutter/material.dart';


class Building {
  int _count = 0;
  double _wps;
  double _cost;

  buy(){

  }

  increaseCount() {
    _count++;
    _wps *= _count;
  }
  getCount(){
    return _count;
  }
  getWps(){
    return _wps;
  }
  getCost(){
    return _cost;
  }
}

class HomeGrowBox extends Building {
  double _wps = 0.01;
  increaseCount() {
    _count++;
    _wps *= _count;
  }
  HomeGrowBox(){
    _wps = 0.01;
    _cost = pow(1.0, _count+1);
  }
}
class Dealer extends Building {
  double _wps = 0.01;

}
class Botanists extends Building {
  double _wps = 0.01;

}
class WareHouse extends Building {
  double _wps = 0.01;

}
class Plantation extends Building {
  double _wps = 0.01;

}
class Port extends Building {
  double _wps = 0.01;

}
class Country extends Building {
  double _wps = 0.01;

}
class Planet extends Building {
  double _wps = 0.01;

}


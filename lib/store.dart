import 'dart:async';

import 'package:flutter/material.dart';
import 'buildings.dart';
import 'main.dart';
import 'user.dart';

class StorePageWidgetState extends State<StorePageWidget> {
  User user = new User();
  Timer _timer;

  StorePageWidgetState(User user){
   this.user = user;
  }

  String errorMessage;

  _buyBuilding(Building building){
    var cost = building.getCost();
    if(cost > user.getWeedStored()){
      errorMessage = 'Weed not sufficient to buy ' + building.runtimeType.toString() + '!';
    } else {
      building.increaseCount();
      user.decreaseWeedStoredBy(cost);
    }
  }

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
                title: Text("Weed in Grams: "),
                trailing: Text(user.getWeedStored().toStringAsFixed(2)),
            ),
           ListTile(
             leading: Image(image: AssetImage("assets/homegrow.JPG")),
             title: Text("Home-Growing Box"),
             trailing: Text(user.getBox().count.toString()),
             subtitle: Text("Buy cost: " + user.getBox().getCost().toStringAsFixed(0) + " gram" + "\n" +
                            "Current WpS: " + user.getBox().getWps().toStringAsFixed(2)),
            onTap: () {
              errorMessage = null;
               _buyBuilding(user.getBox());
               setState(() {});
             }
           ),ListTile(
                leading: Image(image: AssetImage("assets/dealer.JPG")),
                title: Text("Dealer"),
                trailing: Text(user.dealer.count.toString()),
                subtitle: Text("Buy cost: " + user.dealer.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.dealer.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.dealer);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/botanist.JPG")),
                title: Text("Botanist"),
                trailing: Text(user.botanist.count.toString()),
                subtitle: Text("Buy cost: " + user.botanist.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.botanist.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.botanist);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/warehouse.JPG")),
                title: Text("Warehouse"),
                trailing: Text(user.wareHouse.count.toString()),
                subtitle: Text("Buy cost: " + user.wareHouse.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.wareHouse.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.wareHouse);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/plantation.JPG")),
                title: Text("Plantation"),
                trailing: Text(user.plantation.count.toString()),
                subtitle: Text("Buy cost: " + user.plantation.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.plantation.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.plantation);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/ship.JPG")),
                title: Text("Port"),
                trailing: Text(user.port.count.toString()),
                subtitle: Text("Buy cost: " + user.port.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.port.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.port);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/country.JPG")),
                title: Text("Country"),
                trailing: Text(user.country.count.toString()),
                subtitle: Text("Buy cost: " + user.country.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.country.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.country);
                  setState(() {});
                }
            ),ListTile(
                leading: Image(image: AssetImage("assets/planet.JPG")),
                title: Text("Planet"),
                trailing: Text(user.planet.count.toString()),
                subtitle: Text("Buy cost: " + user.planet.getCost().toStringAsFixed(0) + " gram" + "\n" +
                    "Current WpS: " + user.planet.getWps().toStringAsFixed(2)),
                onTap: () {
                  errorMessage = null;
                  _buyBuilding(user.planet);
                  setState(() {});
                }
            ),
            ListTile(
                subtitle: Text((errorMessage != null) ? errorMessage : "", style: TextStyle(color: Colors.deepOrangeAccent), ),
                onTap: () {
                  setState(() {});
                }
            ),
          ],
      ),
    );
  }

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {});
    });
    super.initState();
    errorMessage = null;
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
class StorePageWidget extends StatefulWidget {
  User user = new User();
  StorePageWidget(User user){
   this.user = user;
  }

  @override
  StorePageWidgetState createState() => StorePageWidgetState(user);

}

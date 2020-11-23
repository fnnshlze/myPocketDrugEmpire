import 'package:flutter/material.dart';
import 'buildings.dart';
import 'main.dart';
import 'init.dart';

class StorePageWidgetState extends State<StorePageWidget> {
  User user = new User();
  StorePageWidgetState(User user){
   this.user = user;
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
             title: Text("Home-Growing Box"),
             trailing: Text(user.getBoxCount().toString()),
             subtitle: Text(5.toString()+ " Kosten BITCH"),
            onTap: () {
               user.box.increaseCount();
               setState(() {});
             }
           ),
        /*    ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Dealer"),
              trailing: Text(_dealerCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _dealerCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Botanists"),
              trailing: Text(_botanistsCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _botanistsCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Warehouse"),
              trailing: Text(_warehouseCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _warehouseCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Plantation"),
              trailing: Text(_plantationCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _plantationCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Port"),
              trailing: Text(_portCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _portCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Country"),
              trailing: Text(_countryCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _countryCount += clickWeight;
                  setState(() {});
                }
            ),
            ListTile(
              leading: Image(image: AssetImage("assets/weed.jpg")),
              title: Text("Planet"),
              trailing: Text(_planetCount.toString()),
              subtitle: Text(5.toString()+ " Kosten BITCH"),
                onTap: () {
                  _planetCount += clickWeight;
                  setState(() {});
                }
            ),*/
          ],
      ),
    );
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

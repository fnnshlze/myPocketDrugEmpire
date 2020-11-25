import 'buildings.dart';

class User {
  HomeGrowBox _box = new HomeGrowBox();
  Dealer _dealer = new Dealer();
  Botanists _botanist = new Botanists();
  WareHouse _wareHouse = new WareHouse();
  Plantation _plantation = new Plantation();
  Port _port = new Port();
  Country _country = new Country();
  Planet _planet = new Planet();

  double _weedStored = 0.0;

  double getWeedStored(){
    return _weedStored;
  }

  double getWps() {
    return _box.getWps() + _dealer.getWps() + _botanist.getWps() + _wareHouse.getWps() + _plantation.getWps() + _port.getWps() + _country.getWps() + _planet.getWps();
  }

  decreaseWeedStoredBy(double decreaseAmount) {
    if(decreaseAmount > 0) _weedStored -= decreaseAmount;
    else return;
  }

  increaseWeedStoredBy(double increaseAmount){
    if(increaseAmount > 0) _weedStored += increaseAmount;
    else return;
  }

  HomeGrowBox getBox(){
    return _box;
  }

  Dealer get dealer => _dealer;

  Planet get planet => _planet;

  Country get country => _country;

  Port get port => _port;

  Plantation get plantation => _plantation;

  WareHouse get wareHouse => _wareHouse;

  Botanists get botanist => _botanist;
}
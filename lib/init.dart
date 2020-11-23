import 'buildings.dart';

class User {
  HomeGrowBox box = new HomeGrowBox();
  double weedInGram = 0.0;
  getBoxCount(){
    return box.getCount();
  }
  getBoxWps() {
    return box.getWps();
  }
}
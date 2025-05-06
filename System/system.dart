import '../model/Restaurant.dart';
import '../model/item.dart';

class System {
  static List<Restaurant> resturants = [];

  static void addResturant(Restaurant r) {
    resturants.add(r);
  }

  static void displayResturant() {
    for (Restaurant r in resturants) {
      r.displayMenu();
      print("///////////////////////////////////////////////////");
    }
  }

  static void addItem({required Item item, required int index}) {
    resturants[index].addItem(item: item);
  }

  static void addItems({required List<Item> items, required int index}) {
    resturants[index].addItems(newItems: items);
  }
}

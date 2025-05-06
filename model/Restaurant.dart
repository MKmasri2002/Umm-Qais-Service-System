import 'item.dart';

class Restaurant {
  String name;
  String Location;
  List<Item> items = [];
  Restaurant({required String this.name, required this.Location});

  void addItem({required Item item}) {
    this.items.add(item);
  }

  void addItems({required List<Item> newItems}) {
    this.items.addAll(newItems);
  }

  void displayMenu() {
    print("Restaurant $name\n Location : $Location\n");
    for (Item item in items) {
      item.printItemInfo();
    }
  }
}

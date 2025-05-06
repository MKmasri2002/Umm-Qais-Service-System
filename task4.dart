import 'dart:io';
import 'System/system.dart';
import 'model/Restaurant.dart';
import 'model/item.dart';

void main() {
  Restaurant r1 = Restaurant(
    name: "AlHara AlFouqa Cafe",
    Location: "اثار أم قيس بجانب المتحف",
  );
  System.addResturant(r1);
  List<Item> items = [
    Item(name: "شاي", id: 1, price: 1),
    Item(name: "قهوة", id: 2, price: 1),
    Item(name: "موهيتو", id: 3, price: 3),
    Item(name: "بستاشيو", id: 4, price: 2.5),
    Item(name: "نسكفية", id: 5, price: 0.75),
    Item(name: "ريد بول", id: 6, price: 1.5),
    Item(name: "شوكلاة", id: 7, price: 0.75),
  ];
  System.addItems(items: items, index: 0);
  ////////////////////////////////////////////////////////////////
  Restaurant r2 = Restaurant(
    name: "Alyamama Restaurant",
    Location: "سهل أم قيس",
  );
  System.addResturant(r2);
  List<Item> items2 = [
    Item(name: "مشروبات غازية وطاقة", id: 1, price: 1),
    Item(name: "مشاوي", id: 2, price: 10),
    Item(name: "فروج", id: 3, price: 7),
    Item(name: "ارجيلة", id: 4, price: 5),
    Item(name: "بروستد", id: 5, price: 8),
  ];
  System.addItems(items: items2, index: 1);
  System.displayResturant();
}

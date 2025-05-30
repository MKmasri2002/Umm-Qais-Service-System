# UMM QAIS SERVICE System – Dart Project

This project is a simple restaurant management system written in Dart. It allows the creation and management of restaurants and their menu items using well-structured classes such as `System`, `Restaurant`, and `Item`.

---

## 📁 File: `System/system.dart`

### Documentation for System Class

The `System` class manages a list of restaurants, allowing for the addition of restaurants and items, as well as the display of menus.

### Overview

The `System` class provides a static interface to interact with a collection of `Restaurant` instances. It allows you to add new restaurants, display their menus, and manage the items associated with each restaurant.

### Class: System

#### Static Variables

- **restaurants** (`List<Restaurant>`): A list that stores all the restaurants managed by the system.

#### Static Methods

- **addRestaurant(Restaurant r)**: Adds a new restaurant to the `restaurants` list.

  ```dart
  System.addRestaurant(new Restaurant(...));
  ```

- **displayRestaurant()**: Displays the menu for each restaurant in the `restaurants` list.

  ```dart
  System.displayRestaurant();
  ```

- **addItem({required Item item, required int index})**: Adds a single item to a restaurant by index.

  ```dart
  System.addItem(item: new Item(...), index: 0);
  ```

- **addItems({required List<Item> items, required int index})**: Adds multiple items to a restaurant by index.

  ```dart
  System.addItems(items: [new Item(...), new Item(...)], index: 0);
  ```

---

## 📁 File: `model/Restaurant.dart`

### Documentation for Restaurant Class

The `Restaurant` class represents a restaurant with a name, location, and a list of menu items.

### Overview

The `Restaurant` class encapsulates the properties and functionalities of a restaurant, including adding items and displaying menus.

### Properties

- **name** (`String`): The restaurant's name.
- **location** (`String`): The location of the restaurant.
- **items** (`List<Item>`): Menu items of the restaurant.

### Constructor

```dart
Restaurant({required String name, required String location});
```

### Methods

- **addItem({required Item item})**

  ```dart
  restaurant.addItem(item: newItem);
  ```

- **addItems({required List<Item> newItems})**

  ```dart
  restaurant.addItems(newItems: [item1, item2]);
  ```

- **displayMenu()**

  ```dart
  restaurant.displayMenu();
  ```

---

## 📁 File: `model/item.dart`

### Documentation for Item Class

The `Item` class holds information about individual menu items.

### Overview

The `Item` class serves as a blueprint for creating items, each with a name, ID, and price.

### Attributes

- **name** (`String`): The name of the item.
- **id** (`int`): A unique identifier.
- **price** (`double`): The cost of the item.

### Constructor

```dart
Item({required String name, required int id, required double price});
```

### Methods

- **printItemInfo()**

  ```dart
  Item myItem = Item(name: "Laptop", id: 101, price: 999.99);
  myItem.printItemInfo();
  ```

  **Output:**

  ```
  ID : 101   Name : Laptop   Price : 999.99 JD
  ```

---

## 📁 File: `task4.dart`

### Documentation for task4.dart

This file is the entry point of the application. It demonstrates how to use the system to create restaurants, add items, and display all data.

### Overview

It showcases:

1. **Creating Restaurants**
2. **Adding Restaurants to the System**
3. **Adding Items to Restaurants**
4. **Displaying the Restaurant Menus**

### Imports

- `dart:io`
- `System/system.dart`
- `model/Restaurant.dart`
- `model/item.dart`

### Example Usage

```dart
void main() {
  // Create restaurants
  Restaurant r1 = Restaurant(name: "AlHara AlFouqa Cafe", location: "اثار أم قيس بجانب المتحف");
  Restaurant r2 = Restaurant(name: "Alyamama Restaurant", location: "سهل أم قيس");

  // Add restaurants to the system
  System.addRestaurant(r1);
  System.addRestaurant(r2);

  // Create items
  List<Item> items1 = [
    Item(name: "شاي", id: 1, price: 1),
    Item(name: "قهوة", id: 2, price: 1),
  ];

  List<Item> items2 = [
    Item(name: "مشاوي", id: 3, price: 10),
    Item(name: "كباب", id: 4, price: 8),
  ];

  // Add items to restaurants
  System.addItems(items: items1, index: 0);
  System.addItems(items: items2, index: 1);

  // Display all restaurant menus
  System.displayRestaurant();
}
```

---

## ✅ Conclusion

This project demonstrates core Dart concepts such as classes, lists, and method calls in the context of a basic restaurant management system. It's a great foundation for expanding into more advanced features like user input, data persistence, or UI integration.

Happy Coding! 🚀
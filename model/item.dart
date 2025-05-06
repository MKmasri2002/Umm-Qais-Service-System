class Item {
  String name;
  int id;
  double price;
  Item({
    required String this.name,
    required int this.id,
    required double this.price,
  });

  void printItemInfo() {
    print("ID : $id   Name : $name Price : $price JD");
  }
}

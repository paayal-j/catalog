class CatalogBook {
  static final items = [
    Item(
        id: 1,
        name: "Atomic Habits",
        desc: "Easy and proven way to build good habits and break bad ones",
        price: 30,
        color: "#33505a",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/51-nXsSRfZL._SX328_BO1,204,203,200_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

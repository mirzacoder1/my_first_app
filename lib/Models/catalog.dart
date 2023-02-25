class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String Color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.Color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      Color: map["Color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": Color,
        "image": image
      };
}

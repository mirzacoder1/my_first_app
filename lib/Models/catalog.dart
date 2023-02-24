class Item {
  final String id;
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
}

final products = [
  Item(
      id: "Mirza001",
      name: "iPhone 11",
      desc: "Apple iPhone 11th Generation",
      price: 9990,
      Color: "#33505a",
      image:
          "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-pro-2.jpg")
];

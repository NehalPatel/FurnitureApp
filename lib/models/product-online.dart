class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 275,
    price: 600,
    title: "Wooden Frame WF 05 (Sweethome)",
    image: "assets/images/275.png",
    description:
        "Product details Colour : Black, Material : Wooden, Height : 10 inches (Appro), Width : 22 inches (Appro), Print Size : (6x4)x3 inches (Appro), Photos Required : 3, Required days for preparation : 3",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Magic Mug",
    image: "assets/images/2-2.png",
    description:
        "Colour : Black,Material : Ceramic,Height : 3.7 inches (Appro),Width : 4.5 inches (Appro),Diameter : 3.0 inches (Appro),Print Size : 8 x 3.5 inches (Appro),Photos Required : 2 + message",
  ),
  Product(
    id: 86,
    price: 1200,
    title: "Hanging Pillow",
    image: "assets/images/86.png",
    description:
        "Colour : Coloured,Material : Cloth,Height : 24 inches (Appro),Width : 30 inches (Appro),Print Size : 6 x 4 inches 7 photo and 6 x 30 inches 1 photo (Appro),Photos Required : 12",
  ),
];

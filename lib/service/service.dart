import 'package:http/http.dart';
import 'dart:convert';
import '../constants.dart';
// import 'package:intl/intl.dart';

class Service {
  List<Product> products = [];

  Future<List<Product>> getProducts() async {
    try {
      // make the request
      Response response = await get(serverURL + '/api/products');

      if (response.statusCode == 200) {
        var productJson = json.decode(response.body);
        for (var p in productJson) {
          Product product = Product(
              p["productId"], p["mrp"], p["name"], p["description"], "");

          products.add(product);
        }

        // products = json
        //     .decode(response.body)
        //     .map((value) => new Product.fromJson(value))
        //     .toList();
      } else {
        print('error while accessing server');
      }
    } catch (e) {
      print(e);
    }

    print(products.length);
    return products;
  }
}

class Product {
  final double price;
  final String productId, name, description, image;

  Product(this.productId, this.price, this.name, this.description, this.image);

  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     productId: json['productId'],
  //     // price: json['mrp'],
  //     name: json['name'],
  //     description: json['description'],
  //     image: json['photos'],
  //   );
  // }
}

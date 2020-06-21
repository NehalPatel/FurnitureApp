import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';
import 'package:furnitureapp/screens/details/details_screen.dart';
import 'package:furnitureapp/screens/product/products_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ProductScreen());
      case '/details':
        // Validation of correct data type
        print('clicked');
        if (args is Product) {
          return MaterialPageRoute(
            builder: (_) => DetailsScreen(
                  product: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
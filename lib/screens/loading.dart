import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shreecreations/service/service.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupHomePage() async {
    Service instance = Service();
    await instance.getProducts();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'products': instance.products,
    });
  }

  @override
  void initState() {
    super.initState();
    print('make call for getting product data');
    setupHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
            child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        )));
  }
}

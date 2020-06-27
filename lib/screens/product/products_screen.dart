import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shreecreations/constants.dart';
import 'package:shreecreations/screens/product/components/body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text('Shree Creation'),
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/notification.svg"),
              onPressed: () {
                print('notification clicked');
              }),
        ]);
  }
}

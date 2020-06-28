import 'package:flutter/material.dart';

import 'package:shreecreations/screens/details/components/color_dots.dart';
import 'package:shreecreations/constants.dart';

class ListOfColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            fillColor: Color(0xFF80989A),
            isSelected: false,
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
            isSelected: true,
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shreecreations/models/product.dart';
import 'package:shreecreations/constants.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Function press;

  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      // color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            //Those are our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            //our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: this.product.id,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  // image is square but we add extra 20 + 20 padding thats why width is 200
                  width: 200,
                  child: Image.asset(
                    this.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //Product title and price
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5,
                          vertical: kDefaultPadding / 4,
                        ),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            )),
                        child: Text(
                          "${product.price} INR",
                          style: Theme.of(context).textTheme.button,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

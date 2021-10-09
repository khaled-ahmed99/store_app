import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/product.dart';
import 'package:store_app/screens/details_screen.dart';
import '../../constants.dart';

class productCard extends StatelessWidget {
  final Product product;

  const productCard({@required this.product});
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Container(
      height: _size.height / 4,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          vertical: kDefaultPadding * 1.5, horizontal: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(1, 10),
          )
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: product,
                  ),
                ),
              );
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 0,
                  top: -(constraints.maxHeight / 5),
                  child: Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(product.image),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Material(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding / 3,
                              horizontal: kDefaultPadding * 1.5),
                          child: Text(
                            'السعر: \$${product.price}',
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}

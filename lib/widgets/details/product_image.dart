import 'package:flutter/material.dart';
import '../../constants.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final Size size;
  ProductImage({
    this.image,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
      height: size.height * 3 / 5,
      width: size.height * 3 / 4,
      child: Stack(
        alignment: AlignmentDirectional.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

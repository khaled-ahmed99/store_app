import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/widgets/details/details_body.dart';

import '../product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detalsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}

Widget detalsAppBar(BuildContext context) => AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );

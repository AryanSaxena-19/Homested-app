import 'package:flutter/material.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget{
  static String routeName = "/details";

  @override
  Widget build(BuildContext context){
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0XFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: args.product.rating),
      ),
      body: Body(product: args.product),
    );
  }
}
class ProductDetailsArguments{
  final Product product;

  ProductDetailsArguments({required this.product});
}
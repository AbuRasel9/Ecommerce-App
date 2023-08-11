import 'package:ecommerce/ui/widget/appbar_category_wish_cart_etc.dart';
import 'package:ecommerce/ui/widget/productItemPreviewCard.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReUseAbleAppBar("Wish List"),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 6/8,
          ),
          itemBuilder: (context, index) {
            return const ProductItemPreviewCard();
          }),
    );
  }
}

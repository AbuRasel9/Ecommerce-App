import 'package:ecommerce/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerce/ui/widget/appbar_category_wish_cart_etc.dart';
import 'package:ecommerce/ui/widget/categoryItems.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReUseAbleAppBar("Category"),
      body: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return CategoriesItemWidget(
                categoryName: "Abc",
                categoryIcon: Icons.android,
                onTapIcon: () {});
          }),
    );
  }
}

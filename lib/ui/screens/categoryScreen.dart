import 'package:ecommerce/ui/getx/bottom_navigation_controller.dart';
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
  BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 02,
        backgroundColor: Colors.white,
        title: const Text(
          "Category",
          style: TextStyle(
            wordSpacing: 0.2,
            color: Colors.black54,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              controller.changeIndex(0);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black54,
            )),
      ),
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

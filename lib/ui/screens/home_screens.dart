import 'package:ecommerce/ui/screens/categoryScreen.dart';
import 'package:ecommerce/ui/screens/home_screens.dart';
import 'package:ecommerce/ui/screens/product_screen.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/categoryItems.dart';
import 'package:ecommerce/ui/widget/home/homeBannerSlidder.dart';
import 'package:ecommerce/ui/widget/home/sectionHeader.dart';
import 'package:ecommerce/ui/widget/productItemPreviewCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        //logo nav
        title: SvgPicture.asset("assets/images/logo_nav.svg"),
        actions: [
          const SizedBox(
            width: 10,
          ),

          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade700,
                  size: 25,
                )),
          ),
          const SizedBox(
            width: 10,
          ),

          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.grey.shade700,
                  size: 25,
                )),
          ),

          const SizedBox(
            width: 10,
          ),
          //appbar action button
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active,
                  color: Colors.grey.shade700,
                  size: 25,
                )),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              //form feild
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //carousel_slider and banner
              HomeBannerSlidder(),
              //section headder
              SectionHeader(headerTitle: "All Categories ", onTapSeeAll: () {Get.to(const ProductCategoryScreen());}),
              //Categori item part
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoriesItemWidget(
                      categoryName: 'Electronics',
                      categoryIcon: Icons.computer,
                      onTapIcon: () {},
                    ),
                    CategoriesItemWidget(
                      categoryName: 'Food',
                      categoryIcon: Icons.emoji_food_beverage,
                      onTapIcon: () {},
                    ),
                    CategoriesItemWidget(
                      categoryName: 'Mobile',
                      categoryIcon: Icons.mobile_friendly,
                      onTapIcon: () {},
                    ),
                    CategoriesItemWidget(
                      categoryName: 'Camera',
                      categoryIcon: Icons.camera,
                      onTapIcon: () {},
                    ),
                    CategoriesItemWidget(
                      categoryName: 'Electronics',
                      categoryIcon: Icons.computer,
                      onTapIcon: () {},
                    ),
                    CategoriesItemWidget(
                      categoryName: 'Electronics',
                      categoryIcon: Icons.computer,
                      onTapIcon: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //List of populler item part
              SectionHeader(headerTitle: "Popular", onTapSeeAll: () {Get.to(const ProductListScreen());}),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //product cart
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard()
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              //Special section
              SectionHeader(headerTitle: "Special", onTapSeeAll: () {Get.to(const ProductListScreen());}),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //product cart
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard()
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),


              //new Section
              SectionHeader(headerTitle: "New", onTapSeeAll: () {Get.to(const ProductListScreen());}),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //product cart
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard(),
                    ProductItemPreviewCard()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


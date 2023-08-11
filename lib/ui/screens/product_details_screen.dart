import 'package:ecommerce/ui/screens/home_screens.dart';
import 'package:ecommerce/ui/screens/main_bottom_navigation_bar.dart';
import 'package:ecommerce/ui/screens/review_screen.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/inc_dec_form_feild.dart';
import 'package:ecommerce/ui/widget/product_image/product_image_slidder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black54,
          onPressed: () {
            Get.to(const MainBootomNavigationBar());
          },
        ),
        title: const Text(
          "Product Details",
          style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlidder(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              "Nike Sports Shoe A34FGHH ",
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            )),
                            SizedBox(width: 100, child: IncDecFormFeild())
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            const Text("4.1"),
                            const SizedBox(
                              width: 8,
                            ),
                            TextButton(
                                onPressed: () {Get.to(const ReviewScreen());},
                                child: Text(
                                  "Reviews",
                                  style: TextStyle(color: AppColors.primaryColor),
                                )),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.primaryColor,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Color",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 10,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: CircleAvatar(
                                    radius: (21),
                                    backgroundColor: AppColors.primaryColor,
                                    child: Icon(Icons.check),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Size",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: Colors.black),
                                      ),
                                      child: Text("XL"),
                                    )),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                            """Reference site about Lorem Ipsum, giving information on its 
origins, as well as a random Lipsum generator Reference site 
about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator""",style: TextStyle(color: Colors.black54,fontSize: 14,letterSpacing: .3),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          //add to cart button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.20),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    const SizedBox(height: 2,),
                    Text(
                      "\$12000",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(
                    width: 100,
                    child: ReUseAbleElevatedButton(
                        text: "Add To Cart", onTap: () {})),

              ],
            ),
          )

        ],
      ),
    );
  }
}

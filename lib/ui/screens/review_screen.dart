import 'package:ecommerce/ui/screens/create_review_screen.dart';
import 'package:ecommerce/ui/screens/product_details_screen.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/customer_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 02,
          backgroundColor: Colors.white,
          title: const Text(
            "Review",
            style: TextStyle(
              wordSpacing: 0.2,
              color: Colors.black54,
              fontWeight: FontWeight.w800,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetailsScreen()));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black54,
              )),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CustomerReview(),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.20),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(500)
                        ),
                          child: IconButton(
                        color: Colors.white,
                        onPressed: () {Get.to(const CreateReviewScreen());},
                        icon: const Icon(Icons.add),
                      ))),
                ],
              ),
            )
          ],
        ));
  }
}

import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/appbar_category_wish_cart_etc.dart';
import 'package:ecommerce/ui/widget/cart_product_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ReUseAbleAppBar("Cart"),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CartProductItem();
                  }),
            ),
            Container(
              padding: EdgeInsets.all(16),
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
                          text: "CheckOut", onTap: () {})),

                ],
              ),
            )
          ],
        ));
  }
}

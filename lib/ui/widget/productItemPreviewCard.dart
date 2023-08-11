import 'package:ecommerce/ui/screens/product_details_screen.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductItemPreviewCard extends StatelessWidget {
  const ProductItemPreviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.to(const ProductDetailsScreen());},
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)),
        // color: const Color.fromRGBO(231, 247, 247, 100),
        elevation: 3,
        child: Column(
          children: [
            //product Image
            Image.asset(
              'assets/images/product.png',
              height: 120,
              width: 160,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Product Name",

              //TextOverflow used for when text overfow than dot dot(..)show
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: .2,
                  overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(
              height: 6,
            ),
            //for product price star mark and favourite
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$500",
                  style: TextStyle(
                      color: AppColors.primaryColor, fontSize: 13),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.amber,
                ),
                const Text(
                  "4.5",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 8,
                ),

                //for favourite button
                GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 14,
                        ))),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

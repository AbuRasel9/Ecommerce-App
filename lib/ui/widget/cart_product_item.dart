import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/inc_dec_form_feild.dart';
import 'package:flutter/material.dart';
class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),

          //product image
          Image.asset(
            'assets/images/product.png',
            width: 100,
            height: 90,
            fit: BoxFit.cover,
          ),
          //product name ,price item count
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //product item details
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.4,
                                color:
                                Color.fromRGBO(102, 102, 102, 100)),
                          ),
                          SizedBox(
                            width: 8,
                          ),

                          //product size and colors
                          Row(
                            children: [
                              Text(
                                "Color : Black",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(
                                        102, 102, 102, 100)),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Size : XL",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(
                                        102, 102, 102, 100)),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 30,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  //product price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$100",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        width: 110,
                        child: IncDecFormFeild(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

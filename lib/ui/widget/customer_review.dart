import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:flutter/material.dart';
class CustomerReview extends StatelessWidget {
  const CustomerReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              const Text(
                "Abu Rasel",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Text(
              """Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator""",
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.black54,
                  letterSpacing: .2
              ))
        ],
      ),
    );
  }
}

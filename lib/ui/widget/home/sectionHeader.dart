import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String headerTitle;
  final VoidCallback onTapSeeAll;

  const SectionHeader({
    super.key,
    required this.headerTitle,
    required this.onTapSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: const TextStyle(letterSpacing: 0.4,fontSize: 24, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: onTapSeeAll,
            child: Text(
              "See All",
              style: TextStyle(letterSpacing: 0.4,color: AppColors.primaryColor, fontSize: 16),
            )),
      ],
    );
  }
}

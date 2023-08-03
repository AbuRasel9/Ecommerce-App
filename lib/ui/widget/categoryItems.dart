import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class CategoriesItemWidget extends StatelessWidget {
  final String categoryName;
  final IconData categoryIcon;
  final VoidCallback onTapIcon;

  const CategoriesItemWidget({
    super.key,
    required this.categoryName,
    required this.categoryIcon,
    required this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapIcon,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primaryColor.withOpacity(.15)),
              child: Icon(
                categoryIcon,
                size: 45,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              categoryName,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  letterSpacing: 0.4),
            )
          ],
        ),
      ),
    );
  }
}

//Re Use Able Text Form Feild
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:flutter/material.dart';

class AppTextFeildWidget extends StatelessWidget {
  final TextEditingController Controller;
  final String hintText;
  const AppTextFeildWidget({
  super.key, required , required this.hintText, required this.Controller,
});

@override
Widget build(BuildContext context) {
  return TextFormField(
      controller: Controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: subTitleTextStyle,
        fillColor: Colors.white,
        border: OutlineInputBorder(

            borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(5)),                focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5)),

      )

  );
}
}
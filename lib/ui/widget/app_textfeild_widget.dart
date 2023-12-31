//Re Use Able Text Form Feild
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:flutter/material.dart';

class AppTextFeildWidget extends StatelessWidget {
  final int? maxLine;
  final TextEditingController Controller;
  final String hintText;
  const AppTextFeildWidget({
  super.key, required , required this.hintText, required this.Controller, this.maxLine,
});

@override
Widget build(BuildContext context) {
  return TextFormField(
    //maxline it is null or not when null then get 1 otherwise given line
      maxLines: maxLine ?? 1,
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
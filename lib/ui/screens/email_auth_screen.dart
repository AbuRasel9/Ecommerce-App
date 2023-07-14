import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/reuseable_logo.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:ecommerce/ui/widget/app_textfeild_widget.dart';
import 'package:flutter/material.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 42,
                ),

                ReUseAbleLogo(),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "WelCome Back",
                  style: titleTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Please Enter Your Email Address",
                  style: subTitleTextStyle,
                ),
                const SizedBox(height: 15,),
                AppTextFeildWidget(Controller:TextEditingController(), hintText: "Email Address",),

                const SizedBox(
                  height: 20,
                ),
                ReUseAbleElevatedButton(
                  onTap: () {},
                  text: "Next",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


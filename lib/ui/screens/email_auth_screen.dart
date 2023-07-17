import 'package:ecommerce/ui/screens/veryfy_otp_screen.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/reuseable_logo.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:ecommerce/ui/widget/app_textfeild_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Email Authtentication Screen
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SafeArea(
            child: Column(
              children: [
                //for some space
                const SizedBox(
                  height: 42,
                ),

                //Screen logo

                ReUseAbleLogo(),
                //for some space
                const SizedBox(
                  height: 25,
                ),
                //welcome text
                Text(
                  "WelCome Back",
                  style: titleTextStyle,
                ),
                //for some space
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Please Enter Your Email Address",
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 15,
                ),
                //Text Form Feild get Reuseable widget
                AppTextFeildWidget(
                  Controller: TextEditingController(),
                  hintText: "Email Address",
                ),

                const SizedBox(
                  height: 20,
                ),
                //button
                ReUseAbleElevatedButton(
                  onTap: () {
                    Get.to(VeryfyOtpScreen());
                  },
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

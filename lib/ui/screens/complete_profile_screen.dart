import 'package:ecommerce/ui/screens/main_bottom_navigation_bar.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/app_textfeild_widget.dart';
import 'package:ecommerce/ui/widget/reuseable_logo.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SafeArea(
            child: Column(
              children: [
                //for some space
                const SizedBox(
                  height: 40,
                ),

                //Screen logo

                ReUseAbleLogo(),
                //for some space
                const SizedBox(
                  height: 25,
                ),

                Text(
                  "Complete Profile",
                  style: titleTextStyle,
                ),
                //for some space
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Get started with us with your details ",
                  style: subTitleTextStyle,
                ),

                //Text form Feild part
                const SizedBox(
                  height: 15,
                ),
                AppTextFeildWidget(
                    hintText: "First Name",
                    Controller: TextEditingController()),
                const SizedBox(
                  height: 15,
                ),
                AppTextFeildWidget(
                    hintText: "Last Name", Controller: TextEditingController()),
                const SizedBox(
                  height: 15,
                ),
                AppTextFeildWidget(
                    hintText: "Mobile", Controller: TextEditingController()),
                const SizedBox(
                  height: 15,
                ),
                AppTextFeildWidget(
                    hintText: "City", Controller: TextEditingController()),
                const SizedBox(
                  height: 15,
                ),
                AppTextFeildWidget(
                    maxLine: 4,
                    hintText: "Shipping Address",
                    Controller: TextEditingController()),

                const SizedBox(
                  height: 15,
                ),
                //button
                ReUseAbleElevatedButton(
                  onTap: () {
                    Get.offAll(const MainBootomNavigationBar());
                  },
                  text: "Complete",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

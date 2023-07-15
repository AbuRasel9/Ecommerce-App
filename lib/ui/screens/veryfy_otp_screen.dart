import 'package:ecommerce/ui/screens/complete_profile_screen.dart';
import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:ecommerce/ui/widget/app_elevated_button.dart';
import 'package:ecommerce/ui/widget/app_textfeild_widget.dart';
import 'package:ecommerce/ui/widget/reuseable_logo.dart';
import 'package:ecommerce/ui/widget/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VeryfyOtpScreen extends StatefulWidget {
  const VeryfyOtpScreen({super.key});

  @override
  State<VeryfyOtpScreen> createState() => _VeryfyOtpScreenState();
}

class _VeryfyOtpScreenState extends State<VeryfyOtpScreen> {
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
                  height: 42,
                ),

                //Screen logo

                ReUseAbleLogo(),
                //for some space
                const SizedBox(
                  height: 25,
                ),

                Text(
                  "Enter OTP Code",
                  style: titleTextStyle,
                ),
                //for some space
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "A 4 Digit OTP Code has been Sent",
                  style: subTitleTextStyle,
                ),
                const SizedBox(
                  height: 25,
                ),
                //otp feild
                PinCodeTextField(
                  //alignment all feild
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  //field number
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    //active fill color in feild
                    activeFillColor: Colors.white,
                      //inactive fill color in feild
                    inactiveFillColor: Colors.white,
                    //selected fill color in feild
                    selectedFillColor: Colors.white,
                    //selected feild border color
                    selectedColor: AppColors.primaryColor,
                    //inactive feild border color
                    inactiveColor: AppColors.primaryColor,

                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),

                const SizedBox(
                  height: 20,
                ),
                //button
                ReUseAbleElevatedButton(
                  onTap: () {
                    Get.to(const CompleteProfileScreen());
                  },
                  text: "Next",
                ),
                const SizedBox(height: 25,),

                //bottom text inline
                RichText(
                  text: TextSpan(
                      text: "This code will expire in  ",
                      style: subTitleTextStyle,
                      children: [
                        TextSpan(
                            text: "120s",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                            ))
                      ]),
                ),
                const SizedBox(height: 2,),
                //Text button for resend code
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: subTitleTextStyle,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

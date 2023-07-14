import 'package:ecommerce/ui/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //spalash screen part
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            //logo
            SvgPicture.asset(
              "assets/images/logo.svg",
              width: 120,
              fit: BoxFit.scaleDown,
            ),
            const Spacer(),
            const SizedBox(
              height: 32,
            ),
            CircularProgressIndicator(color: AppColors.primaryColor),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Version 1.0.0",
              style: TextStyle(color: Color.fromRGBO(166, 166, 166, 100),letterSpacing: .6),

            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}

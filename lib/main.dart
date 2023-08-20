import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(){
  runApp(const CraftyBayApp());
}
class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const GetMaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

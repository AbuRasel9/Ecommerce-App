import 'package:flutter/material.dart';

import 'ui/screens/splash_screen.dart';

void main(){
  runApp(const CraftyBayApp());
}
class CraftyBayApp extends StatelessWidget {
  const CraftyBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

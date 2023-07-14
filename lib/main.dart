import 'package:ecommerce/ui/screens/email_auth_screen.dart';
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
      home: EmailAuthScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:ecommerce/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerce/ui/screens/home_screens.dart';
import 'package:ecommerce/ui/screens/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Used for Category,wishList,cart etc screen Reuseable appbar

AppBar ReUseAbleAppBar(name) {
  BottomNavigationController controller = Get.put(BottomNavigationController());

  return AppBar(
    elevation: 02,
    backgroundColor: Colors.white,
    title: Text(
      name,
      style: const TextStyle(
        wordSpacing: 0.2,
        color: Colors.black54,
        fontWeight: FontWeight.w800,
      ),
    ),
    leading: IconButton(
        onPressed: () {
          // controller.changeIndex(0);
          Get.to(const MainBootomNavigationBar());
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black54,
        )),
  );
}

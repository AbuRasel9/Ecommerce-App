import 'package:ecommerce/ui/getx/bottom_navigation_controller.dart';
import 'package:ecommerce/ui/screens/categoryScreen.dart';
import 'package:ecommerce/ui/screens/home_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBootomNavigationBar extends StatefulWidget {
  const MainBootomNavigationBar({super.key});

  @override
  State<MainBootomNavigationBar> createState() => _MainBootomNavigationBarState();
}

class _MainBootomNavigationBarState extends State<MainBootomNavigationBar> {
  BottomNavigationController controller=Get.put(BottomNavigationController());
  //for get multipule screen in same navbar click navbar go to next screen
  final List<Widget>screens=[
    const HomeScreen(),
    const ProductCategoryScreen(),

    const ProductCategoryScreen(),
    const ProductCategoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationController>(
        builder: (_) {
          return screens[controller.selectedIndex];
        }
      ),


      //bottom navigation bar
      bottomNavigationBar: GetBuilder<BottomNavigationController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: controller.selectedIndex,

            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.green,
            showUnselectedLabels: true,
            onTap: (index){
              controller.changeIndex(index);


            },
            items: const [
              BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon:Icon(Icons.dashboard_outlined),label: "Categories"),
              BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart"),
              BottomNavigationBarItem(icon:Icon(Icons.card_giftcard),label: "Wish"),
            ],
          );
        }
      ),
    );
  }
}

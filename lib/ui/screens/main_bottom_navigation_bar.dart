import 'package:ecommerce/ui/screens/home_screens.dart';
import 'package:flutter/material.dart';

class MainBootomNavigationBar extends StatefulWidget {
  const MainBootomNavigationBar({super.key});

  @override
  State<MainBootomNavigationBar> createState() => _MainBootomNavigationBarState();
}

class _MainBootomNavigationBarState extends State<MainBootomNavigationBar> {
  int selectedIndex=0;
  //for get multipule screen in same navbar click navbar go to next screen
  final List<Widget>screens=[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],


      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (index){
          index=selectedIndex;
          setState(() {

          });

        },
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Icons.dashboard_outlined),label: "Categories"),
          BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon:Icon(Icons.card_giftcard),label: "Wish"),
        ],
      ),
    );
  }
}

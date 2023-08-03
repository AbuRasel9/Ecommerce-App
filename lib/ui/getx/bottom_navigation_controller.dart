//use getx for controlling main_bottom_navigation bar

import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  int selectedIndex=0;
  void changeIndex(int index){
    selectedIndex=index;
    update();
  }

}
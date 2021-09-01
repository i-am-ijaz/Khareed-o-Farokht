import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:khareedo_farokht/screens/account/account_screen.dart';
import 'package:khareedo_farokht/screens/cart/shopping_cart_screen.dart';
import 'package:khareedo_farokht/screens/home/home_screen.dart';
import 'package:khareedo_farokht/screens/settings/setting_screen.dart';

class MainScreenController extends GetxController {
  var selectedIndex = 0.obs;
  PageController? myPage;

  List<Widget> widgetOptions = <Widget>[
    HomeScreen(),
    ShoppingCart(),
    AccountScreeen(),
    SettingsScreen(),
  ].obs;

  void updateIndex(int currentIndex) {
    selectedIndex(currentIndex);
  }

  @override
  void onInit() {
    super.onInit();
    myPage = PageController(initialPage: selectedIndex.value);
  }
}

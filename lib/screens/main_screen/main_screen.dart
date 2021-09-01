import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khareedo_farokht/contollers/main_screen_controller.dart';
import 'package:khareedo_farokht/utils/colors.dart';

class MainScreen extends StatelessWidget {
  final _controller = Get.put(MainScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          _controller.widgetOptions.elementAt(_controller.selectedIndex.value)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: _controller.selectedIndex.value,
          backgroundColor: Colors.white,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: GoogleFonts.roboto(fontSize: 12),
          selectedLabelStyle: GoogleFonts.roboto(fontSize: 12),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/bn_home_icon.svg",
                height: 20,
                width: 20,
                color: _controller.selectedIndex.value == 0
                    ? primaryColor
                    : Colors.black,
              ),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/bn_question_icon.svg",
                height: 25,
                width: 20,
                color: _controller.selectedIndex.value == 1
                    ? primaryColor
                    : Colors.black,
              ),
              label: 'Questions',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/bn_user_icon.svg",
                height: 20,
                width: 20,
                color: _controller.selectedIndex.value == 2
                    ? primaryColor
                    : Colors.black,
              ),
              label: 'Experts',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svgs/bn_user_icon.svg",
                height: 20,
                width: 20,
                color: _controller.selectedIndex.value == 3
                    ? primaryColor
                    : Colors.black,
              ),
              label: 'Experts',
            ),
          ],
          onTap: (currentIndex) => _controller.updateIndex(currentIndex),
        ),
      ),
    );
  }
}

import 'package:assignment/app/Modules/bottom_navigation/controllers/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/app_colors.dart';

class BottomNavView extends GetView<BottomNavController> {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/icon.png'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0,
      ),
      body: Obx(() {
        return controller.pages[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          selectedItemColor: AppColors.primary,
          showSelectedLabels: false,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) {
            controller.selectedIndex.value = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                  size: 25,
                ),
                activeIcon: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Icon(
                      Icons.home,
                      size: 25,
                    )),
                label: '',
                backgroundColor: AppColors.primary),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.favorite_outlined,
                  size: 25,
                ),
                activeIcon: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Icon(
                      Icons.favorite_outlined,
                      size: 25,
                    )),
                label: '',
                backgroundColor: AppColors.primary),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                  size: 25,
                ),
                activeIcon: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Icon(
                      Icons.shopping_cart_rounded,
                      size: 25,
                    )),
                label: '',
                backgroundColor: AppColors.primary),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person,
                  size: 25,
                ),
                activeIcon: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: const Icon(
                      Icons.person,
                      size: 25,
                    )),
                label: '',
                backgroundColor: AppColors.primary),
          ],
        );
      }),
    );
  }
}

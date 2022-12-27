import 'package:assignment/app/Modules/bottom_navigation/controllers/bottom_nav_controller.dart';
import 'package:assignment/app/Modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
                icon: GetX<HomeController>(
                  builder: (controller) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Icon(
                          Icons.favorite_outlined,
                          size: 25,
                        ),
                        Visibility(
                          visible: controller.wishList.isEmpty ? false : true,
                          child: Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade500,
                              radius: 10,
                              child: Text(controller.wishList.length.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                activeIcon: GetX<HomeController>(
                  builder: (controller) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            padding:
                            const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: const Icon(
                              Icons.favorite_outlined,
                              size: 25,
                            )),
                        Visibility(
                          visible: controller.wishList.isEmpty ? false : true,
                          child: Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade500,
                              radius: 10,
                              child: Text(controller.wishList.length.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                label: '',
                backgroundColor: AppColors.primary),
            BottomNavigationBarItem(
                icon: GetX<HomeController>(
                  builder: (controller) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Icon(
                          Icons.shopping_cart_rounded,
                          size: 25,
                        ),
                        Visibility(
                          visible: controller.cartList.isEmpty ? false : true,
                          child: Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade500,
                              radius: 10,
                              child: Text(controller.cartList.length.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                activeIcon: GetX<HomeController>(
                  builder: (controller) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                            padding:
                            const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: const Icon(
                              Icons.shopping_cart_rounded,
                              size: 25,
                            )),
                        Visibility(
                          visible: controller.cartList.isEmpty ? false : true,
                          child: Positioned(
                            top: -5,
                            right: -5,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade500,
                              radius: 10,
                              child: Text(controller.cartList.length.toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w500),),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
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

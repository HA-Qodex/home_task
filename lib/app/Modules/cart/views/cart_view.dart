import 'package:assignment/app/Modules/cart/controllers/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/app_colors.dart';
import '../../home/controllers/home_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    controller.cartList.assignAll(Get.find<HomeController>().cartList);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
        child: Obx(() {
          return SizedBox(
            height: 100,
            width: width,
            child: ListView.builder(
                itemCount: controller.cartList.length,
                itemBuilder: (context, index) {
                  print(controller.cartList.length);
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      height: 82,
                      width: 174,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(104, 104, 104, 0.7),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 82,
                              width: 65,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        controller.cartList[index].image
                                            .toString(),
                                      ),
                                      fit: BoxFit.fill))),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.cartList[index].name
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      controller.cartList[index].description
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Text(
                                  "x2",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    "\$${controller.cartList[index].price.toString()}",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: AppColors.primary,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          );
        }),
      ),
    );
  }
}

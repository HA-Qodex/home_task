import 'package:assignment/app/Modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../resources/app_colors.dart';

class WishView extends GetView<HomeController> {
  const WishView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
        child: Obx(() {
          return GridView.builder(
              shrinkWrap: true,
              itemCount: controller.wishList.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Container(
                  width: 173,
                  // height: 211,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(104, 104, 104, 0.7),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 90,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.only(
                                      topLeft:
                                      Radius.circular(12)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        controller
                                            .wishList[index].image
                                            .toString(),
                                      ),
                                      fit: BoxFit.fill))),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.wishList
                                        .remove(controller
                                        .wishList[
                                    index]);
                                  },
                                  child: const Icon(
                                    Icons.favorite,
                                    color: AppColors.primary,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.wishList[index].name
                                    .toString(),
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                controller
                                    .wishList[index].description
                                    .toString(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${controller.wishList[index].price
                                  .toString()}",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w400),
                            ),
                            Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  controller.cartList.contains(
                                      controller.topPicksList[
                                      index])
                                      ? controller.cartList
                                      .remove(controller
                                      .topPicksList[
                                  index])
                                      : controller.cartList.add(
                                      controller.topPicksList[
                                      index]);
                                },
                                child: Icon(
                                  controller.cartList
                                      .contains(controller
                                      .topPicksList[
                                  index])
                                      ? Icons.remove_circle_rounded:
                                  Icons.add_circle,
                                  color: AppColors.primary,
                                ),
                              );
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}

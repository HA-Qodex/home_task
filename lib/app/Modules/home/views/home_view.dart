import 'package:assignment/app/Modules/home/controllers/home_controller.dart';
import 'package:assignment/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg.png"), fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "View all",
                    style:
                    GoogleFonts.poppins(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(() {
                return SizedBox(
                  height: 123,
                  width: width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categoryList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.selectedCategory.value = index;
                              controller.filtered(
                                  categoryType: controller
                                      .categoryList[index].categoryType
                                      .toString());
                            },
                            child: Obx(() {
                              return Container(
                                height: 123,
                                width: 102,
                                decoration: BoxDecoration(
                                    color: controller.selectedCategory.value ==
                                        index
                                        ? AppColors.primary
                                        : const Color.fromRGBO(
                                        104, 104, 104, 0.7),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  children: [
                                    Expanded(
                                        child: Image.network(
                                          controller.categoryList[index].image
                                              .toString(),
                                          height: 58,
                                          width: 58,
                                        )),
                                    SizedBox(
                                        height: 30,
                                        child: Text(
                                          controller
                                              .categoryList[index].categoryName
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                              );
                            }),
                          ),
                        );
                      }),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently Ordered",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View all",
                    style:
                    GoogleFonts.poppins(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(() {
                return SizedBox(
                  height: 82,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.recentOrderList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
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
                                              controller
                                                  .recentOrderList[index].image
                                                  .toString(),
                                            ),
                                            fit: BoxFit.fill))),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      controller.recentOrderList[index].name
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "x2",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "\$${controller.recentOrderList[index]
                                          .price.toString()}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          color: AppColors.primary,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              }),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Top Picks",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                  child: Obx(() {
                    return GridView.builder(
                        shrinkWrap: true,
                        itemCount: controller.topPicksList.length,
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
                                                      .topPicksList[index].image
                                                      .toString(),
                                                ),
                                                fit: BoxFit.fill))),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0, right: 20.0),
                                          child: Obx(() {
                                            return GestureDetector(
                                              onTap: () {
                                                controller.wishList.contains(
                                                    controller.topPicksList[
                                                    index])
                                                    ? controller.wishList
                                                    .remove(controller
                                                    .topPicksList[
                                                index])
                                                    : controller.wishList.add(
                                                    controller.topPicksList[
                                                    index]);
                                              },
                                              child: Icon(
                                                Icons.favorite,
                                                color: controller.wishList
                                                    .contains(controller
                                                    .topPicksList[
                                                index])
                                                    ? AppColors.primary
                                                    : Colors.white,
                                                size: 25,
                                              ),
                                            );
                                          }),
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
                                          controller.topPicksList[index].name
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          controller
                                              .topPicksList[index].description
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
                                        "\$${controller.topPicksList[index]
                                            .price.toString()}",
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
              ),
            ],
          )),
    );
  }
}

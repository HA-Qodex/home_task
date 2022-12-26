import 'package:assignment/app/Modules/home/controllers/home_controller.dart';
import 'package:assignment/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elvan'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0,
      ),
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
              Container(
                height: 123,
                width: 102,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(104, 104, 104, 0.7),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Expanded(
                        child: Image.asset(
                      "assets/pizza.png",
                      height: 58,
                      width: 58,
                    )),
                    SizedBox(
                        height: 30,
                        child: Text(
                          "Pizza",
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.white),
                        ))
                  ],
                ),
              ),
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
              Container(
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
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/pizza_2.png",
                                ),
                                fit: BoxFit.fill))),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Pizza",
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
                          "\$199",
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
              Container(
                width: 173,
                // height: 211,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(104, 104, 104, 0.7),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 82,
                            width: 65,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pizza_2.png",
                                    ),
                                    fit: BoxFit.fill))),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, right: 20.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cipolla",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Tomato sauce,Mozzarella,Onions...",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$199",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w400),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  splashColor: AppColors.primary.withOpacity(0.4),
                                  splashRadius: 10.0,
                                  icon: const Icon(
                                    Icons.add_circle,
                                    color: AppColors.primary,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

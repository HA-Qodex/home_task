import 'package:assignment/app/Modules/cart/views/cart_view.dart';
import 'package:assignment/app/Modules/home/views/home_view.dart';
import 'package:assignment/app/Modules/profile/views/profile_view.dart';
import 'package:assignment/app/Modules/wish/controllers/views/wish_view.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  var selectedIndex = 0.obs;

  final pages = [
    HomeView(),
    WishView(),
    CartView(),
    ProfileView()
  ];

}
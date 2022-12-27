import 'package:assignment/app/Modules/bottom_navigation/views/bottom_nav_view.dart';
import 'package:assignment/app/Modules/cart/bindings/cart_bindings.dart';
import 'package:assignment/app/Modules/home/bindings/home_binding.dart';
import 'package:assignment/app/Modules/profile/views/profile_view.dart';
import 'package:assignment/app/Modules/home/views/wish_view.dart';
import 'package:get/get.dart';

import '../Modules/bottom_navigation/bindings/bottom_nav_binding.dart';
import '../Modules/cart/views/cart_view.dart';
import '../Modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION;

  static final routes = [
    GetPage(
        name: _Paths.NAVIGATION,
        binding: BottomNavBinding(),
        page: () => const BottomNavView()),
    GetPage(
        name: _Paths.HOME,
        binding: HomeBinding(),
        page: () => const HomeView()),
    GetPage(name: _Paths.WISH, page: () => const WishView(), binding: CartBinding()),
    GetPage(name: _Paths.CART, page: () => const CartView()),
    GetPage(name: _Paths.PROFILE, page: () => const ProfileView()),
  ];
}

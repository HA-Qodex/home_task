import 'package:assignment/app/Modules/profile/views/profile_view.dart';
import 'package:assignment/app/Modules/wish/controllers/views/wish_view.dart';
import 'package:get/get.dart';

import '../Modules/cart/views/cart_view.dart';
import '../Modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages{
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: ()=>HomeView()),

    GetPage(
        name: _Paths.WISH,
        page: ()=>WishView()),

    GetPage(
        name: _Paths.CART,
        page: ()=>CartView()),

    GetPage(
        name: _Paths.PROFILE,
        page: ()=>ProfileView()),
  ];
}
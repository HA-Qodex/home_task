import 'package:assignment/app/Modules/bottom_navigation/controllers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
  }
}
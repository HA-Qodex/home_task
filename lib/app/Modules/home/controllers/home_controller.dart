import 'package:assignment/app/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../models/caegory_model.dart';

class HomeController extends GetxController {

  var categoryList = <CategoryModel>[].obs;
  var productList = <ProductModel>[].obs;
  var recentOrderList = <ProductModel>[].obs;
  var topPicksList = <ProductModel>[].obs;
  var wishList = <ProductModel>[].obs;
  var cartList = <ProductModel>[].obs;

  var selectedCategory = 0.obs;

  @override
  void onReady() {
    categoryList.bindStream(categoryStream());
    productList.bindStream(productStream());
    // filtered(categoryType: productList[0].categoryType.toString());
    super.onReady();
  }

  static Stream<List<CategoryModel>> categoryStream() {
    return FirebaseFirestore.instance
        .collection('categories')
        .snapshots()
        .map((QuerySnapshot query) {
      List<CategoryModel> categories = [];
      for (var category in query.docs) {
        final categoryModel =
        CategoryModel.fromDocumentSnapshot(documentSnapshot: category);
        categories.add(categoryModel);
      }
      return categories;
    });
  }

  static Stream<List<ProductModel>> productStream() {
    return FirebaseFirestore.instance
        .collection('products')
        .snapshots()
        .map((QuerySnapshot query){
          List<ProductModel> products = [];
          for(var product in query.docs){
            final productModel = ProductModel.fromDocumentSnapshot(documentSnapshot: product);
            products.add(productModel);
          }
          return products;
    });
  }

  void filtered({required String categoryType}){
    recentOrderList.assignAll(productList.where((e) => e.categoryType == categoryType && e.orderStatus == 1));
    topPicksList.assignAll(productList.where((e) => e.categoryType == categoryType && e.orderStatus == 0));
  }

}
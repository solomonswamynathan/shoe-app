import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/model/discover_model.dart';
import 'package:shoe/model/sales.dart';
import 'package:shoe/model/shoe.dart';

class AppController extends GetxController {
  // ignore: prefer_final_fields
  RxList<Shoe> _shoes = <Shoe>[
    Shoe(
        id: 1,
        brand: "NIKE",
        productName: "Air Max 270",
        price: 129.00,
        isFav: true,
        backgroundColor: AppColor.backgroud_1,
        productImage: "assets/images/shoe3.png"),
    Shoe(
        id: 2,
        brand: "NIKE",
        productName: "Air Max 270",
        price: 129.00,
        isFav: true,
        backgroundColor: AppColor.backgroud_2,
        productImage: "assets/images/shoe3.png"),
    Shoe(
        id: 3,
        brand: "NIKE",
        productName: "Air Max 270",
        price: 129.00,
        isFav: true,
        backgroundColor: AppColor.backgroud_3,
        productImage: "assets/images/shoe3.png"),
    Shoe(
        id: 4,
        brand: "NIKE",
        productName: "Air Max 270",
        price: 129.00,
        isFav: true,
        backgroundColor: AppColor.backgroud_4,
        productImage: "assets/images/shoe3.png"),
  ].obs;

  List<Shoe> get shoes => _shoes;

  // ignore: prefer_final_fields
  RxList<Sales> _sales = <Sales>[
    Sales(
        id: 1,
        discountPer: 15,
        backgroudColor: AppColor.backgroud_4,
        tagColor: AppColor.backgroud_1,
        productImage: "assets/images/shoe3.png",
        price: 109.00),
    Sales(
        id: 2,
        discountPer: 15,
        backgroudColor: AppColor.backgroud_3,
        tagColor: AppColor.backgroud_2,
        productImage: "assets/images/shoe3.png",
        price: 109.00),
    Sales(
        id: 3,
        discountPer: 15,
        backgroudColor: AppColor.backgroud_2,
        tagColor: AppColor.backgroud_3,
        productImage: "assets/images/shoe3.png",
        price: 109.00),
    Sales(
        id: 4,
        discountPer: 15,
        backgroudColor: AppColor.backgroud_1,
        tagColor: AppColor.backgroud_4,
        productImage: "assets/images/shoe3.png",
        price: 109.00),
  ].obs;

  List<Sales> get sales => _sales;

  // ignore: prefer_final_fields
  RxInt _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;
  setSelectedTab(int tabId) {
    _selectedTab.value = tabId;
  }

  // ignore: prefer_final_fields
  RxInt _selectedMenu = 0.obs;
  int get selectedMenu => _selectedMenu.value;
  setSelectedMenu(int menuId) {
    _selectedMenu.value = menuId;
    pageController.jumpToPage(menuId);
  }

  PageController pageController = PageController();

  // ignore: prefer_final_fields
  RxList<DiscoverModel> _discoverModel = <DiscoverModel>[
    DiscoverModel(
        id: 1,
        productImage: "assets/images/shoe1.jpg",
        productTitle: "New Sneaker Trends"),
    DiscoverModel(
        id: 1,
        productImage: "assets/images/shoe2.jpg",
        productTitle: "Customize"),
  ].obs;

  List<DiscoverModel> get discoverModel => _discoverModel;
}

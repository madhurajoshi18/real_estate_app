import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/notification/notification_list.dart';

class PageViewController extends GetxController {
  final PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  final RxInt currentPageIndex = RxInt(0);

  static const int totalPages = 4;

  void setCurrentPageIndex(int index) {
    currentPageIndex.value = index;
  }

  void onPageViewFinished() {
    Get.to(NotificationList());
  }

  @override
  void onReady() {
    super.onReady();
    ever(currentPageIndex, (_) {
      if (currentPageIndex.value >= totalPages - 1) {
        onPageViewFinished();
      }
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

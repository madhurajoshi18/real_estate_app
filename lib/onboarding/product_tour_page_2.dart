import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/onboarding/product_tour_page_1.dart';
import 'package:real_estate_app/onboarding/product_tour_page_3.dart';
import 'package:real_estate_app/widgets/product_tour.dart';

class ProductTourPage2 extends StatelessWidget {
  final ProductTourController _productTourController = ProductTourController();

  @override
  Widget build(BuildContext context) {
    _productTourController.onSkipPressed = _handleSkipPressed;
    _productTourController.onNextPressed = _handleNextPressed;
    _productTourController.onBackPressed = _handleBackPressed;

    return ProductTour(
      imageUrl: "https://picsum.photos/200/300",
      title: "Fast sell your property\nin just ",
      subtitle: "one click",
      text: "",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
      controller: _productTourController,
      showBackArrow: true,
      child: Container(),
    );
  }

  void _handleSkipPressed() {
    Get.to(() => ProductTourPage3());
  }

  void _handleNextPressed() {
    Get.to(() => ProductTourPage3());
  }

  void _handleBackPressed() {
    Get.to(() => ProductTourPage1());
  }
}

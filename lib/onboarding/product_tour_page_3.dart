import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/option.dart';
import 'package:real_estate_app/onboarding/product_tour_page_2.dart';
import 'package:real_estate_app/widgets/product_tour.dart';

class ProductTourPage3 extends StatelessWidget {
  final ProductTourController _productTourController = ProductTourController();

  @override
  Widget build(BuildContext context) {
    _productTourController.onSkipPressed = _handleSkipPressed;
    _productTourController.onNextPressed = _handleNextPressed;
    _productTourController.onBackPressed = _handleBackPressed;

    return ProductTour(
      imageUrl: "https://picsum.photos/200/300",
      title: "Find ",
      subtitle: "perfect choice ",
      text: "for \nyour future house",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
      controller: _productTourController,
      showBackArrow: true,
      child: Container(),
    );
  }

  void _handleSkipPressed() {
    Get.to(() => Option());
  }

  void _handleNextPressed() {
    Get.to(() => Option());
  }

  void _handleBackPressed() {
    Get.to(() => ProductTourPage2());
  }
}

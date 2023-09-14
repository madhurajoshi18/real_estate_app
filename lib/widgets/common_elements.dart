import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/home/home_full.dart';

class CommonElements extends StatelessWidget {
  final ProductTourController controller;
  final bool showBackArrow;
  final int currentPage;
  final int pageCount;

  CommonElements({
    required this.controller,
    required this.showBackArrow,
    required this.currentPage,
    required this.pageCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.home,
            color: Color(0xFF8BC83F),
          ),
          onPressed: () {
            Get.to(() => HomeFull());
          },
        ),
        GestureDetector(
          onTap: controller.skip,
          child: Container(
            width: 86,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFDFDFDF),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.36,
              ),
            ),
          ),
        ),
        if (showBackArrow && currentPage > 0)
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: controller.back,
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 18, 32, 47),
              ),
            ),
          ),
        ProgressIndicator(currentPage: currentPage, pageCount: pageCount),
        ElevatedButton(
          onPressed: controller.next,
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF8BC83F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: Size(233, 54),
          ),
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.48,
            ),
          ),
        ),
      ],
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  ProgressIndicator({required this.currentPage, required this.pageCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        pageCount,
        (index) => Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPage ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}

class ProductTourController {
  VoidCallback? onSkipPressed;
  VoidCallback? onNextPressed;
  VoidCallback? onBackPressed;

  get tourPages => null;

  void skip() {
    if (onSkipPressed != null) {
      onSkipPressed!();
    }
  }

  void next() {
    if (onNextPressed != null) {
      onNextPressed!();
    }
  }

  void back() {
    if (onBackPressed != null) {
      onBackPressed!();
    }
  }
}

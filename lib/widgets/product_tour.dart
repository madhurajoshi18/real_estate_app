import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/home/home_full.dart';

class ProductTour extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String text;
  final String description;
  final ProductTourController controller;
  final bool showBackArrow;

  const ProductTour({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.text,
    required this.description,
    required this.controller,
    this.showBackArrow = true,
    required Container child,
  });

  @override
  State<ProductTour> createState() => _ProductTourState();

  copyWithController(ProductTourController productTourController) {}
}

class _ProductTourState extends State<ProductTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      onTap: widget.controller.skip,
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
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 280,
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontFamily: 'Lato',
                                    height: 1.4,
                                    letterSpacing: 0.75,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: widget.title,
                                    ),
                                    TextSpan(
                                      text: widget.subtitle,
                                      style: TextStyle(
                                        color: Color(0xFF204D6C),
                                        fontWeight: FontWeight.w800,
                                        fontSize: 22,
                                        fontFamily: 'Lato',
                                        height: 1.4,
                                        letterSpacing: 0.75,
                                      ),
                                    ),
                                    TextSpan(
                                      text: widget.text,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontFamily: 'Lato',
                                        height: 1.4,
                                        letterSpacing: 0.75,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                widget.description,
                                style: TextStyle(
                                  color: Color(0xFF292929),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 354,
                  height: 505,
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          widget.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 40,
                        child: Transform.translate(
                          offset: Offset(0, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDFDFDF),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (widget.showBackArrow)
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        onPressed: widget.controller.back,
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color:
                                              Color.fromARGB(255, 18, 32, 47),
                                        ),
                                      ),
                                    ),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                    onPressed: widget.controller.next,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTourController {
  VoidCallback? onSkipPressed;
  VoidCallback? onNextPressed;
  VoidCallback? onBackPressed;

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

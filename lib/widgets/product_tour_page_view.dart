import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/home/home_full.dart';
import 'package:real_estate_app/login/form_fill.dart';
import 'package:real_estate_app/login/option.dart';

class ProductTourPageView extends StatelessWidget {
  final PageController _pageController = PageController();
  final ProductTourController _productTourController = ProductTourController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 20),
              TourHeaderButtons(controller: _productTourController),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _productTourController.tourPages.length,
                  onPageChanged: (index) {
                    _productTourController.currentPage = index;
                    if (index == _productTourController.tourPages.length - 1) {
                      Future.delayed(Duration(seconds: 5), () {
                        Get.to(() => Option());
                      });
                    }
                  },
                  itemBuilder: (context, index) {
                    return ProductTour(
                      controller: _productTourController,
                      pageIndex: index,
                    );
                  },
                ),
              ),
            ],
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
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: _productTourController.back,
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 18, 32, 47),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: _productTourController.next,
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
    );
  }
}

class TourHeaderButtons extends StatelessWidget {
  final ProductTourController controller;

  TourHeaderButtons({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
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
            onTap: () {
              Get.to(() => FormFill());
            },
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
    );
  }
}

class ProductTour extends StatelessWidget {
  final ProductTourController controller;
  final int pageIndex;

  ProductTour({
    required this.controller,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    final tourPage = controller.tourPages[pageIndex];

    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                                text: tourPage.title,
                              ),
                              TextSpan(
                                text: tourPage.subtitle,
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
                                text: tourPage.text,
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
                          tourPage.description,
                          style: TextStyle(
                            color: Color(0xFF292929),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
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
            width: 370,
            height: 510,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                tourPage.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductTourController {
  int currentPage = 0;

  List<TourPageData> tourPages = [
    TourPageData(
      imageUrl: "https://picsum.photos/200/300",
      title: "Find the best place\nto stay at a ",
      subtitle: "good price",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
      text: "",
    ),
    TourPageData(
      imageUrl: "https://picsum.photos/200/300",
      title: "Fast sell your property\nin just ",
      subtitle: "one click",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
      text: "",
    ),
    TourPageData(
      imageUrl: "https://picsum.photos/200/300",
      title: "Find ",
      subtitle: "perfect choice ",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
      text: "for \nyour future house",
    ),
  ];

  void next() {
    if (currentPage < tourPages.length - 1) {
      currentPage++;
    }
  }

  void back() {
    if (currentPage > 0) {
      currentPage--;
    }
  }

  void skip() {}
}

class TourPageData {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String text;

  TourPageData({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.text,
  });
}

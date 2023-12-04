import 'package:flutter/material.dart';

class CustomTourPageContent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String text;

  CustomTourPageContent({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imageUrl),
        Text(title),
        Text(subtitle),
        Text(description),
        Text(text),
      ],
    );
  }
}

class DynamicContentSwiper extends StatefulWidget {
  final List<CustomTourPageContent> pages;

  DynamicContentSwiper({required this.pages});

  @override
  _DynamicContentSwiperState createState() => _DynamicContentSwiperState();
}

class _DynamicContentSwiperState extends State<DynamicContentSwiper> {
  int currentPageIndex = 0;

  void nextPage() {
    setState(() {
      if (currentPageIndex < widget.pages.length - 1) {
        currentPageIndex++;
      }
    });
  }

  void previousPage() {
    setState(() {
      if (currentPageIndex > 0) {
        currentPageIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTourPageContent(
          imageUrl: widget.pages[currentPageIndex].imageUrl,
          title: widget.pages[currentPageIndex].title,
          subtitle: widget.pages[currentPageIndex].subtitle,
          description: widget.pages[currentPageIndex].description,
          text: widget.pages[currentPageIndex].text,
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (currentPageIndex > 0)
              ElevatedButton(
                onPressed: previousPage,
                child: Text('Previous'),
              ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: nextPage,
              child: Text('Next'),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductTour extends StatefulWidget {
  final List<CustomTourPageContent> pages;
  final ProductTourController controller;

  const ProductTour({
    required this.pages,
    required this.controller,
  });

  @override
  State<ProductTour> createState() => _ProductTourState();
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
                      onPressed: () {},
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
                DynamicContentSwiper(pages: widget.pages),
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

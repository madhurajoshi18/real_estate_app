import 'dart:ui' show Color, FontWeight, ImageFilter, Offset, Size, TextAlign;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/utils/app_constants.dart';
import 'package:real_estate_app/widgets/product_tour_page_view.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            AppConstants.RANDOM_IMAGE_URL,
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: MediaQuery.of(context).size.width * 0.2,
                          color: Colors.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Rise\nReal Estate',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.translate(
                            offset: Offset(0, 10),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => ProductTourPageView());
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFF8BC83F),
                                minimumSize: Size(
                                  MediaQuery.of(context).size.width / 2.5,
                                  50,
                                ),
                              ),
                              child: Text(
                                "let's start",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Made with love\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'v.1.0',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.02,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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

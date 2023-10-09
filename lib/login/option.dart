import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/form_fill.dart';
import 'package:real_estate_app/register/register_form_empty.dart';
import 'package:real_estate_app/utils/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Option extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
              children: [
                ContainerWithImage(AppConstants.RANDOM_IMAGE_URL),
                ContainerWithImage(AppConstants.RANDOM_IMAGE_URL),
                ContainerWithImage(AppConstants.RANDOM_IMAGE_URL),
                ContainerWithImage(AppConstants.RANDOM_IMAGE_URL),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ready to ',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 1.6,
                            letterSpacing: 0.75,
                          ),
                        ),
                        TextSpan(
                          text: 'explore?',
                          style: TextStyle(
                            color: Color(0xFF1F4C6B),
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 1.6,
                            letterSpacing: 0.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      width: 278,
                      height: 63,
                      decoration: BoxDecoration(
                        color: Color(0xFF8BC83F),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => FormFill());
                              },
                              child: Text(
                                'Continue with Email',
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
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 50,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'OR',
                              style: TextStyle(
                                color: Color(0xFFA1A4C1),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 158.50,
                        height: 70,
                        padding: const EdgeInsets.only(top: 22, bottom: 23),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 158.50,
                        height: 70,
                        padding: const EdgeInsets.only(top: 22, bottom: 23),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF53577A),
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                          letterSpacing: 0.36,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => RegisterFormEmpty());
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1F4C6B),
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWithImage extends StatelessWidget {
  final String imageUrl;

  const ContainerWithImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171,
      height: 174,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

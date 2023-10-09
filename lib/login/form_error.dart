import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/faq.dart';
import 'package:real_estate_app/login/form_fill.dart';

class FormError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 40),
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: IconButton(
                      icon:
                          Icon(Icons.arrow_back_ios, color: Color(0xFF234F68)),
                      onPressed: () {
                        Get.to(() => FormFill());
                      },
                      iconSize: 20,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Get.to(() => FAQ());
                    },
                    iconSize: 20,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Let’s ',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                        letterSpacing: 0.75,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 1.4,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'quis nostrud exercitation ullamco laboris nisi ut',
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 14,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 327,
                height: 50,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: ShapeDecoration(
                  color: Color(0xFF234F68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Your password is incorrect',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 185,
                child: Stack(
                  children: [
                    Positioned(
                      left: 10,
                      top: 0,
                      child: Container(
                        width: 327,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'jonathan@email.com',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),
                            SizedBox(width: 160),
                            Icon(
                              Icons.email_outlined,
                              color: Color(0xFF242B5C),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 85,
                      child: Container(
                        width: 330,
                        height: 70,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.80,
                              color: Color(0xFF8BC83F),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'qwerty_jonathan',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),
                            SizedBox(width: 180),
                            Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 165,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xFF1F4C6B),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 165,
                      child: Text(
                        'hide password',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF234F68),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => FAQ());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(233, 54),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.48,
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
                            fontSize: 12,
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
                  SizedBox(width: 20),
                  Container(
                    width: 150,
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
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF53577A),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 1.25,
                      letterSpacing: 0.36,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FAQ());
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 14,
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
      ),
    );
  }
}

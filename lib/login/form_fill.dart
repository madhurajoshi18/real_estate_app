import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/form_empty.dart';
import 'package:real_estate_app/login/form_error.dart';

class FormFill extends StatefulWidget {
  @override
  _FormFillState createState() => _FormFillState();
}

class _FormFillState extends State<FormFill> {
  //bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        icon: Icon(Icons.arrow_back_ios,
                            color: Color(0xFF234F68)),
                        onPressed: () {
                          Get.to(() => FormEmpty());
                        },
                        iconSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Let’s',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 1.60,
                            letterSpacing: 0.75,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            height: 1.60,
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
                            height: 1.60,
                            letterSpacing: 0.75,
                          ),
                        ),
                        TextSpan(
                          text: '     ',
                          style: TextStyle(
                            color: Color(0xFF1F4C6B),
                            fontSize: 25,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 1.60,
                            letterSpacing: 0.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
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
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 370,
                    height: 70,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,
                            color: Color(0xFF1F4C6B)),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Color(0xFFF5F4F7),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFFA1A4C1),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 370,
                    height: 70,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Color(0xFF1F4C6B)),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Color(0xFFF5F4F7),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        hintStyle: TextStyle(
                          color: Color(0xFFA1A4C1),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF1F4C6B),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Show Password',
                          style: TextStyle(
                            color: Color(0xFF1F4C6B),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            height: 1.2,
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
                      Get.to(() => FormError());
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
                SizedBox(height: 120),
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
                SizedBox(height: 80),
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
                        Get.to(() => FormError());
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
      ),
    );
  }
}

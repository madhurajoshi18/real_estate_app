import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/register/otp.dart';

class RegisterFormEmpty extends StatefulWidget {
  @override
  _RegisterFormEmptyState createState() => _RegisterFormEmptyState();
}

class _RegisterFormEmptyState extends State<RegisterFormEmpty> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(
            width: 40,
            height: 40,
            decoration: ShapeDecoration(
              color: Color(0xFFF5F4F7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF234F68),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                iconSize: 20,
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: double.infinity,
                    height: 470,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 264,
                          height: 80,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Create your ',
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
                                      text: 'account',
                                      style: TextStyle(
                                        color: Color(0xFF234F68),
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
                              const SizedBox(height: 20),
                              Text(
                                'quis nostrud exercitation ullamco laboris nisi ut',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 11,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w400,
                                  height: 1.67,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 360,
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
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.person_outline_outlined,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: fullNameController,
                                  decoration: InputDecoration(
                                    hintText: 'Full Name',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFA1A4C1),
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.36,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 360,
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
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFA1A4C1),
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.36,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 360,
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
                                padding: const EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.lock_outline,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: !showPassword,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Color(0xFFA1A4C1),
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.36,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Terms of service',
                              style: TextStyle(
                                color: Color(0xFF234F68),
                                fontSize: 12,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.36,
                              ),
                            ),
                            Spacer(),
                            Text(
                              showPassword ? 'Hide Password' : 'Show Password',
                              style: TextStyle(
                                color: Color(0xFF234F68),
                                fontSize: 12,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            width: 278,
                            height: 63,
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => OTP());
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.36,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

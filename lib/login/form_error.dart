import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/faq.dart';
import 'package:real_estate_app/login/form_empty.dart';
import 'package:real_estate_app/register/register_form_empty.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_validator/form_validator.dart';

class FormError extends StatefulWidget {
  @override
  State<FormError> createState() => _FormErrorState();
}

class _FormErrorState extends State<FormError> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showPassword = false;

  String? validateEmail(String? value) {
    if (ValidationBuilder().email('Enter a valid email').build()(value) !=
        null) {
      return 'Enter a valid email';
    }

    if (value != null &&
        (value.toLowerCase() == 'gmail.com' ||
            value.toLowerCase() == 'gmail.in')) {
      return 'Email domain not allowed';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => FormEmpty());
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(Icons.arrow_back_ios, color: Color(0xFF234F68)),
                ),
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
              SizedBox(height: 20),
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
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    TextFormField(
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
                      validator: validateEmail,
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: !showPassword,
                      controller: passwordController,
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
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(
                            showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xFF242B5C),
                          ),
                        ),
                      ),
                      validator: ValidationBuilder()
                          .required('Password is required')
                          .minLength(6,
                              'Password length should be more than 6 characters')
                          .build(),
                      onChanged: (value) {
                        _formKey.currentState!.validate();
                      },
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
              SizedBox(height: 180),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Color(0xFFA1A4C1),
                                    height: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                  padding: const EdgeInsets.only(
                                      top: 22, bottom: 23),
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
                                  padding: const EdgeInsets.only(
                                      top: 22, bottom: 23),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

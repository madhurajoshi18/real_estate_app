import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/register/otp.dart';
import 'package:form_validator/form_validator.dart';

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

  String? validateEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const SizedBox(height: 15),
                SizedBox(
                  height: 70,
                  width: 360,
                  child: TextFormField(
                    controller: fullNameController,
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Color(0xFF242B5C),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 20.0,
                      ),
                      fillColor: Color(0xFFF5F4F7),
                      filled: true,
                    ),
                    validator: ValidationBuilder()
                        .required('Full Name is required')
                        .build(),
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 70,
                  width: 360,
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xFF242B5C),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 20.0,
                      ),
                      fillColor: Color(0xFFF5F4F7),
                      filled: true,
                    ),
                    validator: validateEmail,
                    onChanged: (value) {
                      _formKey.currentState!.validate();
                    },
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 70,
                  width: 360,
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF242B5C),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFF242B5C),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 20.0,
                      ),
                      fillColor: Color(0xFFF5F4F7),
                      filled: true,
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
                        bool isFieldEmpty = false;
                        if (fullNameController.text.isEmpty ||
                            emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          isFieldEmpty = true;
                          setState(() {});
                        }

                        if (_formKey.currentState!.validate() &&
                            !isFieldEmpty) {
                          Get.to(() => OTP());
                        }
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
    );
  }
}

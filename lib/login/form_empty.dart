import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/form_fill.dart';
import 'package:real_estate_app/utils/app_constants.dart';
import 'package:form_validator/form_validator.dart';

class FormEmptyController extends GetxController {
  final RxString emailError = ''.obs;
  final RxString passwordError = ''.obs;
  final RxBool loginButtonVisible = false.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxBool showPassword = false.obs;

  String? validateEmail(String? value) {
    if (ValidationBuilder().email('Enter a valid email').build()(value) !=
        null) {
      return 'Enter a valid email';
    }

    String lowercaseValue = value!.toLowerCase();

    if (lowercaseValue == 'gmail.com' || lowercaseValue == 'gmail.in') {
      return 'Email domain not allowed';
    }

    // Check for uppercase domains
    if (value != lowercaseValue) {
      return 'Uppercase domains not allowed';
    }

    return null;
  }

  String? validatePassword(String? value) {
    return ValidationBuilder()
        .required('Password is required')
        .minLength(6, 'Password length should be more than 6 characters')
        .build()(value);
  }

  void clearEmailError() {
    emailError.value = '';
  }

  void clearPasswordError() {
    passwordError.value = '';
  }

  void checkLoginButtonVisibility() {
    bool isValidEmail = validateEmail(emailController.text) == null;
    bool isValidPassword = validatePassword(passwordController.text) == null;

    // Update the condition to ensure both email and password are valid
    loginButtonVisible.value = isValidEmail && isValidPassword;
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}

class FormEmpty extends StatelessWidget {
  final FormEmptyController controller = Get.put(FormEmptyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(AppConstants.RANDOM_IMAGE_URL),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
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
                          SizedBox(height: 40),
                          Obx(
                            () => TextFormField(
                              controller: controller.emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined,
                                    color: Color(0xFF1F4C6B)),
                                hintText: 'Email',
                                filled: true,
                                fillColor: Color(0xFFF5F4F7),
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
                                errorText:
                                    controller.emailError.value.isNotEmpty
                                        ? controller.emailError.value
                                        : null,
                              ),
                              onChanged: (value) {
                                controller.clearEmailError();
                                controller.emailError.value =
                                    controller.validateEmail(value)!;
                                controller.checkLoginButtonVisibility();
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Obx(
                            () => TextFormField(
                              obscureText: !controller.showPassword.value,
                              controller: controller.passwordController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: Color(0xFF1F4C6B)),
                                hintText: 'Password',
                                filled: true,
                                fillColor: Color(0xFFF5F4F7),
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
                                    controller.showPassword.toggle();
                                  },
                                  child: Icon(
                                    controller.showPassword.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xFF242B5C),
                                  ),
                                ),
                                errorText:
                                    controller.passwordError.value.isNotEmpty
                                        ? controller.passwordError.value
                                        : null,
                              ),
                              onChanged: (value) {
                                controller.clearPasswordError();
                                controller.passwordError.value =
                                    controller.validatePassword(value)!;
                                controller.checkLoginButtonVisibility();
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          Obx(
                            () => ElevatedButton(
                              onPressed: controller.loginButtonVisible.value
                                  ? () {
                                      // Add your login logic here
                                      Get.to(() => NextPage());
                                    }
                                  : null, // Disable the button if not visible
                              child: Text('Login'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
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
                          SizedBox(height: 100),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(() => FormFill());
                                    },
                                    child: Text(
                                      "Don't have an account? Register",
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
                                ),
                              ],
                            ),
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
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Your Next Page UI here
          Text('Next Page'),
          ElevatedButton(
            onPressed: () {
              // Implement navigation changes here
              Get.off(() => FormEmpty());
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}

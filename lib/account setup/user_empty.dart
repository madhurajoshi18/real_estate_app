import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/account%20setup/user_fill.dart';

class UserEmpty extends StatefulWidget {
  @override
  State<UserEmpty> createState() => _UserEmptyState();
}

class _UserEmptyState extends State<UserEmpty> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(10),
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 86,
                height: 38,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Center(
                  child: Text(
                    'skip',
                    style: TextStyle(
                      color: Color(0xFF393E67),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0.36,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 274,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Fill your ',
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
                                text: 'information \n',
                                style: TextStyle(
                                  color: Color(0xFF234F68),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                              TextSpan(
                                text: 'below',
                                style: TextStyle(
                                  color: Color(0xFF234F68),
                                  fontSize: 25,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 1.4,
                                  letterSpacing: 0.75,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'You can edit this later on your account setting.',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 12,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.all(20),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF234F68),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(height: 15),
                  buildTextFormField(
                    controller: usernameController,
                    labelText: 'Username',
                    prefixIcon: Icons.person_outline_outlined,
                  ),
                  const SizedBox(height: 15),
                  buildTextFormField(
                    controller: mobileController,
                    labelText: 'Mobile Number',
                    prefixIcon: Icons.phone_outlined,
                  ),
                  const SizedBox(height: 15),
                  buildTextFormField(
                    controller: emailController,
                    labelText: 'Email',
                    prefixIcon: Icons.email_outlined,
                  ),
                  SizedBox(height: 80),
                  Center(
                    child: Container(
                      width: 278,
                      height: 63,
                      decoration: ShapeDecoration(
                        color: Color(0xFF8BC83F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => UserFill());
                        },
                        child: Center(
                          child: Text(
                            'Next',
                            textAlign: TextAlign.center,
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField({
    TextEditingController? controller,
    String? labelText,
    IconData? prefixIcon,
  }) {
    return Container(
      width: 350,
      height: 70,
      decoration: ShapeDecoration(
        color: Color(0xFFF5F4F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
          color: Color(0xFF242B5C),
          fontSize: 12,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
          letterSpacing: 0.36,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(
            prefixIcon,
            color: Color(0xFF53577A),
            size: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

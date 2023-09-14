import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/login/form_empty.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  void _checkAndNavigate() {
    String enteredOtp = otpController1.text +
        otpController2.text +
        otpController3.text +
        otpController4.text;

    if (enteredOtp == "1234") {
      Get.to(() => FormEmpty());
    }
  }

  @override
  void dispose() {
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          Container(
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
                  Icons.arrow_forward_ios,
                  color: Color(0xFF234F68),
                ),
                onPressed: () {
                  Get.to(() => FormEmpty());
                },
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Enter the ',
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
                      text: 'code',
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
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Enter the 4 digit code that we just sent to \n',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        letterSpacing: 0.36,
                      ),
                    ),
                    TextSpan(
                      text: 'jonathan@email.com',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 1.2,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDigitBox(otpController1),
                  _buildDigitBox(otpController2),
                  _buildDigitBox(otpController3),
                  _buildDigitBox(otpController4),
                ],
              ),
              SizedBox(height: 380),
              Center(
                child: Container(
                  width: 120,
                  height: 50,
                  padding: const EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F4F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '00:21',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Didn’t receive the OTP? ',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.36,
                        ),
                      ),
                      TextSpan(
                        text: 'Resend OTP',
                        style: TextStyle(
                          color: Color(0xFF234F68),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                          letterSpacing: 0.36,
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

  Widget _buildDigitBox(TextEditingController controller) {
    return Container(
      width: 75,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F7),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: TextField(
        controller: controller,
        maxLength: 1,
        onChanged: (value) {
          _checkAndNavigate();
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

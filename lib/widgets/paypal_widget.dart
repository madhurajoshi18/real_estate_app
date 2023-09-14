import 'package:flutter/material.dart';

class PaypalWidget extends StatefulWidget {
  @override
  _PaypalWidgetState createState() => _PaypalWidgetState();
}

class _PaypalWidgetState extends State<PaypalWidget> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  Widget buildTextFormField({
    TextEditingController? controller,
    String? labelText,
    IconData? prefixIcon,
  }) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F7),
        borderRadius: BorderRadius.circular(10),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: buildTextFormField(
                controller: fullNameController,
                labelText: 'Full Name',
                prefixIcon: Icons.person_outline_outlined,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: buildTextFormField(
                controller: emailController,
                labelText: 'Email',
                prefixIcon: Icons.email_outlined,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

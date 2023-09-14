import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final IconData? prefixIcon;

  CustomTextFormField({
    Key? key,
    this.controller,
    this.labelText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(
          color: Color(0xFF242B5C),
          fontSize: 12,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
          letterSpacing: 0.36,
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Color(0xFF53577A),
            size: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class MastercardWidget extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expirationDateController =
      TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: CustomTextFormField(
                controller: fullNameController,
                labelText: 'Full Name',
                prefixIcon: Icons.person_outline_outlined,
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: CustomTextFormField(
                controller: cardNumberController,
                labelText: 'Card Number',
                prefixIcon: Icons.add_card,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: expirationDateController,
                      labelText: 'Expiration Date',
                      prefixIcon: Icons.calendar_today,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomTextFormField(
                      controller: cvvController,
                      labelText: 'CVV',
                      prefixIcon: Icons.add_card,
                    ),
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

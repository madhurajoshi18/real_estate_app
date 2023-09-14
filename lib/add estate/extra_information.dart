import 'package:flutter/material.dart';
import 'package:real_estate_app/add%20estate/extra_information_success.dart';

class ExtraInformation extends StatelessWidget {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => ExtraInformationSuccess(),
    );
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
        title: Text(
          "Add Listing",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
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
                  Navigator.pop(context);
                },
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Almost finish',
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
                        text: ', complete\nthe listing',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sell Price',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 327,
              height: 70,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '\$ 180,000',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(width: 220),
                    Icon(
                      Icons.attach_money_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rent Price',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 327,
              height: 70,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      '\$ 315',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '/month',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.30,
                      ),
                    ),
                    SizedBox(width: 210),
                    Icon(
                      Icons.attach_money_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 88,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Monthly',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 80,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Yearly',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Property Features',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 327,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 28,
                    child: Text(
                      'Bedroom',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 206,
                    top: 20,
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.remove, color: Colors.white),
                          ),
                          const SizedBox(width: 18),
                          Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.48,
                            ),
                          ),
                          const SizedBox(width: 18),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 327,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 28,
                    child: Text(
                      'Bathroom',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 206,
                    top: 20,
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.remove, color: Colors.white),
                          ),
                          const SizedBox(width: 18),
                          Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.48,
                            ),
                          ),
                          const SizedBox(width: 18),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 327,
              height: 70,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 327,
                      height: 70,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 28,
                    child: Text(
                      'Balcony',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 206,
                    top: 20,
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.remove, color: Colors.white),
                          ),
                          const SizedBox(width: 18),
                          Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.48,
                            ),
                          ),
                          const SizedBox(width: 18),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: Color(0xFFFA1A5C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Total Rooms',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '🛋️',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.45,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '< 4',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '🛋️',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.45,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '4',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '🛋️',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.45,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '6',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF242B5C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '🛋️',
                            style: TextStyle(
                              color: Color(0xFFF5F4F7),
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              height: 1,
                              letterSpacing: 0.45,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            '< 4',
                            style: TextStyle(
                              color: Color(0xFFF5F4F7),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Environment / Facilities',
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.54,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 110,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 17),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Parking  Lot',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 110,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Pet  Allowed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 17),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Garden',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 75,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Gym',
                      style: TextStyle(
                        color: Color(0xFFF5F4F7),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 75,
                    height: 47,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Park',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      'Home theatre',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 17.50),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Kid's  Friendly",
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _showUserSuccessBottomSheet(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(233, 54),
                  ),
                  child: Text(
                    'Finish',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.48,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 18, 32, 47),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

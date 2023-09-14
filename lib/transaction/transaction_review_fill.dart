import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/transaction/transaction_summary.dart';

class TransactionReviewFill extends StatelessWidget {
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
          "Transaction Review",
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350,
                height: 170,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 170,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://picsum.photos/200/300'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline_outlined,
                                color: Color(0xAF234F68),
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Color(0xAF234F68),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              'Apartment',
                              style: TextStyle(
                                color: Color(0xFFF5F4F7),
                                fontSize: 8,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sky Dandelions \nApartment',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w800,
                                height: 1.4,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Color(0xFF53577A), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  'Jakarta, Indonesia',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                width: 70,
                                height: 40,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: Text(
                                  'Rent',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.48,
                                  ),
                                ),
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Period',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 158.50,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 10,
                                top: 0,
                                child: Container(
                                  width: 158.50,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F4F7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 30,
                                top: 27,
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  size: 20,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 27,
                                child: Text(
                                  '11/28/2021',
                                  style: TextStyle(
                                    color: Color(0xFFA1A4C1),
                                    fontSize: 12,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
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
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          width: 158.50,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 158.50,
                                  height: 70,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFF5F4F7),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 30,
                                top: 27,
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  size: 20,
                                  color: Color(0xFF242B5C),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 27,
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '01/28/2022',
                                        style: TextStyle(
                                          color: Color(0xFFA1A4C1),
                                          fontSize: 12,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w400,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Note for Owner',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.54,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 320,
              height: 70,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Please, clean before I go there',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(width: 170),
                    Icon(
                      Icons.chat_bubble,
                      size: 20,
                      color: Color(0xFF242B5C),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Payment Method',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 18,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.54,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  final imageName = '${index + 1}.png';
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/$imageName',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Have a voucher?',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(width: 150),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'change voucher',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF234F68),
                        fontSize: 10,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        height: 0.90,
                        letterSpacing: 0.30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 327,
              height: 85,
              decoration: BoxDecoration(
                color: Color(0xFF8BC83F).withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Container(
                    width: 119,
                    height: 52,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'HLWN40',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Halloween sale',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.36,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        'Get 40% off on all transactions',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 9,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.27,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => TransactionSummary());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(233, 54),
                  ),
                  child: Text(
                    'Next',
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
                    onPressed: () {
                      Get.to(() => TransactionSummary());
                    },
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

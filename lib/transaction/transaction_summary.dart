import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate_app/transaction/summary_change_payment.dart';
import 'package:real_estate_app/transaction/summary_success.dart';

class TransactionSummary extends StatelessWidget {
  void _showSummaryChangePayment(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => SummaryChangePayment(),
    );
  }

  void _showSummarySuccess(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => SummarySuccess(),
    );
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
        title: Text(
          "Transaction Summary",
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
              padding: const EdgeInsets.all(8),
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
                'Payment Detail',
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
            Container(
              width: 327,
              height: 170,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Period time',
                        style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '2 month',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Monthly payment',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '\$ 220',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discount',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '- \$ 88',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 327,
                    height: 45,
                    padding: const EdgeInsets.only(
                      top: 4,
                      left: 6,
                      right: 6,
                    ),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 18,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '\$ 352',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 18,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Payment Method ',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(width: 180),
                  GestureDetector(
                    onTap: () {
                      _showSummaryChangePayment(context);
                    },
                    child: Text(
                      'change',
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 327,
              height: 56,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.paypal,
                    color: Color(0xFF242B5C),
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '••••••an@email.com',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 12,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.36,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _showSummarySuccess(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(233, 54),
                  ),
                  child: Text(
                    'Pay Rent',
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

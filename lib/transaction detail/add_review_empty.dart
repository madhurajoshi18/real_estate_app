import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/transaction%20detail/add_review_fill.dart';

class AddReviewEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
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
        title: Text(
          "Add Review",
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Hi, how was your ',
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
                    text: 'overall\nexperience? ',
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
            SizedBox(height: 30),
            Text(
              'lorem ipsum dolor sit amet',
              style: TextStyle(
                color: Color(0xFF53577A),
                fontSize: 12,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                height: 1.2,
                letterSpacing: 0.36,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Text(
                  '0.0',
                  style: TextStyle(
                      color: Color(0xFF1F4C6B),
                      fontSize: 25,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: 327,
              height: 120,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.chat,
                      color: Color(0xFFA1A4C1),
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Write your experience in here (optional)',
                      style: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 80,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 150),
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
                    Get.to(() => AddReviewFill());
                  },
                  child: Center(
                    child: Text(
                      'Submit',
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
    );
  }
}

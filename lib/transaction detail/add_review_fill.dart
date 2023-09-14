import 'package:flutter/material.dart';
import 'package:real_estate_app/transaction%20detail/add_review_success.dart';

class AddReviewFill extends StatelessWidget {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => AddReviewSuccess(),
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
            SizedBox(height: 20),
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
                  Icons.star_border,
                  color: Color(0xFFF0A633),
                  size: 35,
                ),
                SizedBox(width: 10),
                Text(
                  '4.0',
                  style: TextStyle(
                      color: Color(0xFF1F4C6B),
                      fontSize: 25,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(height: 10),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.chat,
                      color: Color(0xFFA1A4C1),
                      size: 20,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 159,
                  height: 161,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://picsum.photos/200/300',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFF1F4C6B),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 159,
                  height: 161,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://picsum.photos/200/300',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 2,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color(0xFF1F4C6B),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
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
              ],
            ),
            SizedBox(height: 50),
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
                    _showUserSuccessBottomSheet(context);
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

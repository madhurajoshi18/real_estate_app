import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/Detail/detail_full.dart';

class Promotion extends StatelessWidget {
  const Promotion({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 290),
                  IconButton(
                    icon: Icon(
                      Icons.upload,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 70,
                      right: 100,
                      child: Text(
                        'Halloween \nSale!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.54,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      right: 100,
                      child: Text(
                        'All discount up to 60%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 93,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Color(0xFF242B5C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25),
                            ),
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: 327,
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 327,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Limited time ',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 1.4,
                                letterSpacing: 0.75,
                              ),
                            ),
                            TextSpan(
                              text: 'Halloween Sale',
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
                              text: ' is coming back! ',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 1.4,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    bottom: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 15,
                          height: 10,
                          child:
                              Icon(Icons.calendar_today, color: Colors.black),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'October ',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 12,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: '27, 2022',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
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
            SizedBox(height: 25),
            Container(
              width: 327,
              height: 85,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Opacity(
                      opacity: 0.10,
                      child: Container(
                        width: 327,
                        height: 85,
                        decoration: ShapeDecoration(
                          color: Color(0xFF8BC83F),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 53,
                            height: 53,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 53,
                                    height: 53,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF8BC83D),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 15,
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    padding: const EdgeInsets.all(0.69),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.countertops_outlined)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'HLWN40',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 18,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.54,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Use this coupon to get ',
                                        style: TextStyle(
                                          color: Color(0xFF53577A),
                                          fontSize: 9,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.27,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '40%',
                                        style: TextStyle(
                                          color: Color(0xFF53577A),
                                          fontSize: 9,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.27,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' off on your transaction',
                                        style: TextStyle(
                                          color: Color(0xFF53577A),
                                          fontSize: 9,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.27,
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
            SizedBox(height: 25),
            Container(
              width: 327,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores',
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 278,
        height: 63,
        decoration: ShapeDecoration(
          color: Color(0xFF8BC83F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0xFF234F68),
              blurRadius: 40,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: TextButton(
          onPressed: () {
            Get.to(() => DetailFull());
          },
          child: Center(
            child: Text(
              'Explore more',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

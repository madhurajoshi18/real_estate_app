import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/search/result_filter.dart';

class FilterChooseLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/200/300'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
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
          Positioned(
            top: 120.0,
            left: 16.0,
            right: 16.0,
            child: Container(
              width: 327,
              height: 70,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.800000011920929),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0xB21F4C6B),
                    blurRadius: 80,
                    offset: Offset(0, 17),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.black, size: 20),
                    SizedBox(width: 8.0),
                    Text(
                      'Find Loaction',
                      style: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.36,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.mic, color: Colors.black, size: 20),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 16.0,
            right: 16.0,
            child: Container(
              width: 300,
              height: 120,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.800000011920929),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0xB2C6BEDE),
                    blurRadius: 80,
                    offset: Offset(0, 17),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location Detail',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 1,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.location_on,
                          color: Color(0xFF53577A), size: 20),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Jl. Pandanaran, Semarang Tengah, \nSemarang City, Central Java 50241',
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
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 60,
            right: 60,
            child: Container(
              width: 250,
              height: 63,
              decoration: ShapeDecoration(
                color: Color(0xFF8BC83F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(() => ResultFilter());
                },
                child: Center(
                  child: Text(
                    'Choose Line',
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/Detail/view_all_reviews.dart';

class ViewOnMap extends StatelessWidget {
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
            padding: const EdgeInsets.only(top: 50, left: 20),
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
            top: 50,
            right: 10,
            child: Align(
              alignment: Alignment.topRight,
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
                      Icons.arrow_forward_ios,
                      color: Color(0xFF234F68),
                    ),
                    onPressed: () {
                      Get.to(() => ViewAllReviews());
                    },
                    iconSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Row(
              children: [
                Container(
                  width: 99,
                  height: 47,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 17.50),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    '1 Hospital',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 10,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 120,
                  height: 47,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 17.50),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    '2 Gas stations',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 10,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 99,
                  height: 47,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 17.50),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    '1 Schools',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 10,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 160,
            left: 20,
            child: Container(
              width: 163,
              height: 50,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF242B5C),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Jakarta, Indonesia',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 10,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.30,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Color(0xFF242B5C),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 16.0,
            right: 16.0,
            child: Container(
              width: 327,
              height: 133,
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
                      height: 1.4,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Color(0xFFECEDF3),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.60, color: Color(0xFFECEDF3)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child:
                            Icon(Icons.location_on, color: Color(0xFF242B5C)),
                      ),
                      SizedBox(width: 15),
                      Text(
                        'St. Cikoko Timur, Kec. Pancoran, Jakarta\nSelatan, Indonesia 12770',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

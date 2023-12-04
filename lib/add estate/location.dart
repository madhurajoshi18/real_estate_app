import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/add%20estate/photos.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
                  Get.to(() => Photos());
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
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Where is the',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 1.60,
                          letterSpacing: 0.75,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          height: 1.60,
                          letterSpacing: 0.75,
                        ),
                      ),
                      TextSpan(
                        text: 'location',
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
                        text: '?',
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
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.60, color: Color(0xFFF5F4F7)),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Icon(Icons.location_on, color: Color(0xFF242B5C)),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, \nKota Bandung, Jawa Barat 40115',
                    style: TextStyle(
                      color: Color(0xFF53577A),
                      fontSize: 12,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      height: 1.67,
                      letterSpacing: 0.36,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 327,
                  height: 356,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200/300"),
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 327,
                    height: 50,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.5)),
                  ),
                ),
                Positioned(
                  left: 117,
                  bottom: 15,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Select on the map',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.67,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 18, 32, 47),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Center(
                  child: Container(
                    width: 190,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => Photos());
                      },
                      child: Center(
                        child: Text(
                          'Next',
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
          ],
        ),
      ),
    );
  }
}

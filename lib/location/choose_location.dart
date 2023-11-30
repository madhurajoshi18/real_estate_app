import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/location/location_fill.dart';

class ChooseLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
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
                  padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.06,
                    left: constraints.maxWidth * 0.05,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: constraints.maxWidth * 0.1,
                      height: constraints.maxWidth * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF234F68),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        iconSize: constraints.maxWidth * 0.04,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: constraints.maxHeight * 0.15,
                  left: constraints.maxWidth * 0.05,
                  right: constraints.maxWidth * 0.05,
                  child: Container(
                    width: constraints.maxWidth * 0.85,
                    height: constraints.maxHeight * 0.1,
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
                  bottom: constraints.maxHeight * 0.15,
                  left: constraints.maxWidth * 0.05,
                  right: constraints.maxWidth * 0.05,
                  child: Container(
                    width: constraints.maxWidth * 0.75,
                    height: constraints.maxHeight * 0.15,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5F4F7),
                              ),
                              child: Icon(Icons.location_on_outlined,
                                  color: Color(0xFF242B5C), size: 20),
                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Srengseng, Kembangan, West Jakarta \nCity, Jakarta 11630',
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
                  bottom: constraints.maxHeight * 0.02,
                  left: constraints.maxWidth * 0.2,
                  right: constraints.maxWidth * 0.2,
                  child: Container(
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * 0.1,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => LocationFill());
                      },
                      child: Center(
                        child: Text(
                          'Choose your location',
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
            );
          },
        ),
      ),
    );
  }
}

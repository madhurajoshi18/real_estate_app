import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/search/search_result.dart';

class SearchEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            "Search Results",
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(FontAwesomeIcons.sliders, color: Color(0xFF242B5C)),
              onPressed: () {
                Get.to(() => SearchResult());
              },
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: ShapeDecoration(
                    color: Color(0xFFF5F4F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Minix",
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color(0xFF242B5C),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Found',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.54,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '0',
                      style: TextStyle(
                        color: Color(0xFF234F68),
                        fontSize: 18,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'estates',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.54,
                      ),
                    ),
                    SizedBox(width: 110),
                    Container(
                      width: 93,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          width: 12,
                                          height: 12,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 6.67,
                                                top: 6.67,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(
                                                    width: 5.33,
                                                    height: 5.33,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFFA1A4C1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 6.67,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(
                                                    width: 5.33,
                                                    height: 5.33,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFFA1A4C1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 6.67,
                                                top: 0,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(
                                                    width: 5.33,
                                                    height: 5.33,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFFA1A4C1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Opacity(
                                                  opacity: 0.50,
                                                  child: Container(
                                                    width: 5.33,
                                                    height: 5.33,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFFA1A4C1),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2)),
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
                                const SizedBox(width: 5),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0.67),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 12,
                                              height: 1.33,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFA1A4C1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                              ),
                                            ),
                                            Container(
                                              width: 12,
                                              height: 5.33,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF242B5C),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                              ),
                                            ),
                                            Container(
                                              width: 12,
                                              height: 1.33,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFA1A4C1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 120),
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 20,
                        child: Opacity(
                          opacity: 0.15,
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: Alignment(0.55, 0.53),
                                radius: 0.29,
                                colors: [Color(0xFF234F68), Color(0xFF8BC83F)],
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Opacity(
                          opacity: 0.15,
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: Alignment(0.55, 0.53),
                                radius: 0.29,
                                colors: [Color(0xFF234F68), Color(0xFF8BC83F)],
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Opacity(
                          opacity: 0.1,
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                center: Alignment(0.55, 0.53),
                                radius: 0.29,
                                colors: [Color(0xFF234F68), Color(0xFF8BC83F)],
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        top: 40,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.55, 0.53),
                              radius: 0.29,
                              colors: [Color(0xFF234F68), Color(0xFF8BC83F)],
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              '!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Search',
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
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF234F68),
                          fontSize: 25,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          letterSpacing: 0.75,
                        ),
                      ),
                      TextSpan(
                        text: 'not found ',
                        style: TextStyle(
                          color: Color(0xFF234F68),
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
              ),
              SizedBox(height: 10),
              Text(
                'Sorry, we can’t find the real estates you are looking for. Maybe, a little spelling mistake?',
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

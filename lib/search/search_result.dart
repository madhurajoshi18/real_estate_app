import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate_app/search/filter_short.dart';
import 'package:real_estate_app/widgets/nearby_estates.dart';

class SearchResult extends StatelessWidget {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => FilterShort(),
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
              _showUserSuccessBottomSheet(context);
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                      "Modern House",
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
                      '128',
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
                    SizedBox(width: 85),
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
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Bungalow House",
                    rating: "4.7",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 235/month",
                  ),
                  SizedBox(width: 10),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Bridgeland Modern House",
                    rating: "4.9",
                    location: "Semarang, Indonesia",
                    rent: "\$ 260/month",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Mill Per House",
                    rating: "4.8",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 271/month",
                  ),
                  SizedBox(width: 10),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Sky Dadelions Apartment",
                    rating: "4.8",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 290/month",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Bungalow House",
                    rating: "4.7",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 235/month",
                  ),
                  SizedBox(width: 10),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Bridgeland Modern House",
                    rating: "4.9",
                    location: "Semarang, Indonesia",
                    rent: "\$ 260/month",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/explore/explore_search.dart';
import 'package:real_estate_app/search/search_empty.dart';
import 'package:real_estate_app/widgets/custom_property_card.dart';

class ExampleData extends StatefulWidget {
  @override
  State<ExampleData> createState() => _ExampleDataState();
}

class _ExampleDataState extends State<ExampleData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/200/300'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 65,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
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
                          const SizedBox(width: 8),
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
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 170),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.sliders, color: Colors.white),
                      onPressed: () {
                        Get.to(() => SearchEmpty());
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 125,
                left: 10,
                child: Container(
                  width: 327,
                  height: 70,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => ExploreSearch());
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Search House, Apartment, etc',
                          style: TextStyle(
                            color: Color(0xFFA1A4C1),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.mic,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 560,
                left: 10,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: ShapeDecoration(
                    color: Color(0xFF1F4C6B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Color(0xFF8BC83F),
                          shape: CircleBorder(),
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 10,
                            child: Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Nearby You',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 630,
                left: 10,
                right: 10,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomPropertyCard(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Sky Dandelions \nApartment",
                        rating: "4.9",
                        location: "Jakarta, Indonesia",
                        rent: "\$290",
                        subRent: "/month",
                        bottomText: "Apartment",
                      ),
                      SizedBox(width: 10),
                      CustomPropertyCard(
                        imageUri: "https://picsum.photos/200/300",
                        name: "Sky Dandelions \nApartment",
                        rating: "4.8",
                        location: "Jakarta, Indonesia",
                        rent: "\$220",
                        subRent: "/month",
                        bottomText: "Villa",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

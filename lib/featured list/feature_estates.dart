import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/featured%20list/estates_list_by_category.dart';

import '../widgets/nearby_estates.dart';

class FeatureEstates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.sort, color: Colors.black),
            onPressed: () {
              Get.to(() => EstataesListByCategory());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 224,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 137,
                          width: 133,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  NetworkImage("https://picsum.photos/200/300"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 137,
                          width: 133,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  NetworkImage("https://picsum.photos/200/300"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 60,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Estates',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 1.4,
                        letterSpacing: 0.75,
                      ),
                    ),
                    SizedBox(
                      width: 327,
                      child: Text(
                        'Our recommended real estates exclusive for you.',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
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
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search in feature estate',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black12),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.mic,
                        color: Colors.black12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 40,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '70',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Sky Dandelions Apartment",
                    rating: "4.9",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 290/month",
                  ),
                  SizedBox(width: 20),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "The laurels Villa",
                    rating: "4.8",
                    location: "Bali, Indonesia",
                    rent: "\$ 320/night",
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
                    name: "Sky Dandelions Apartment",
                    rating: "4.9",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 290/month",
                  ),
                  SizedBox(width: 20),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "The laurels Villa",
                    rating: "4.8",
                    location: "Bali, Indonesia",
                    rent: "\$ 320/night",
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

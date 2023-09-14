import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/custom_property_card.dart';

import '../widgets/nearby_estates.dart';

class EstataesListByCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 368,
                width: 405,
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
                      top: 16,
                      left: 16,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.sort, color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 40,
                child: Text(
                  'Top Villa',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF242B5C),
                    fontSize: 25,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    height: 1.4,
                    letterSpacing: 0.75,
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomPropertyCard(
                      imageUri: "https://picsum.photos/200/300",
                      name: "The Laurels Villa",
                      rating: "4.9",
                      location: "Bali, Indonesia",
                      rent: "\$320",
                      subRent: "/night",
                      bottomText: "Villa",
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
                        '120',
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
                        'Villa',
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
                  SizedBox(width: 30),
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
                  SizedBox(width: 30),
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

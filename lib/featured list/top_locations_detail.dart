import 'package:flutter/material.dart';
import 'package:real_estate_app/widgets/custom_property_card.dart';

class TopLocationsDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 330,
                        width: 265,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image:
                                NetworkImage("https://picsum.photos/200/300"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Color(0xFF8BC83F),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '#3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        left: 16,
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
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 220,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://picsum.photos/200/300"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(
                                  Icons.sort,
                                  color: Colors.black,
                                  size: 24,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        width: 100,
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
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Bali',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 25,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 1.4,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Our recommended real states in Jakarta',
                style: TextStyle(
                  color: Color(0xFF242B5C),
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: 0.36,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F4F7),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Modern State',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF242B5C),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFF242B5C),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
                        'Found',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.54,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        '128',
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
              Column(
                children: [
                  CustomPropertyCard(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Flower Heaven \nHouse",
                    rating: "4.7",
                    location: "Bali, Indonesia",
                    rent: "\$370",
                    subRent: "/month",
                    bottomText: "House",
                  ),
                  SizedBox(height: 20),
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomPropertyCard extends StatelessWidget {
  final String imageUri;
  final String bottomText;
  final String name;
  final String rating;
  final String location;
  final String rent;
  final String subRent;

  CustomPropertyCard({
    required this.imageUri,
    required this.bottomText,
    required this.name,
    required this.rating,
    required this.location,
    required this.rent,
    required this.subRent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 290,
        height: 156,
        decoration: ShapeDecoration(
          color: Color(0xFFF5F4F7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 140,
                    height: 134,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: NetworkImage(imageUri),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xAF234F68),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      bottomText,
                      style: TextStyle(
                        color: Color(0xFFF5F4F7),
                        fontSize: 8,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 5),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 1.4,
                        letterSpacing: 0.36,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 16),
                        SizedBox(width: 5),
                        Text(
                          rating,
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: Color(0xFF53577A), size: 16),
                        SizedBox(width: 5),
                        Text(
                          location,
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 8,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: Color(0xFF242B5C),
                        ),
                        SizedBox(width: 5),
                        Text(
                          rent,
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.48,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          subRent,
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 8,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.24,
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
      ),
    );
  }
}

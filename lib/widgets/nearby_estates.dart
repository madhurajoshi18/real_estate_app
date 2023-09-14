import 'package:flutter/material.dart';

class NearbyEstates extends StatelessWidget {
  final String imageUri;
  final String name;
  final String rating;
  final String location;
  final String rent;

  NearbyEstates({
    required this.imageUri,
    required this.name,
    required this.rating,
    required this.location,
    required this.rent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 260,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F7),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 150,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/200/300"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 125,
                right: 6,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xAF234F68),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    rent,
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
            ],
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              height: 1.4,
              letterSpacing: 0.36,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 12,
                color: Colors.yellow,
              ),
              SizedBox(width: 4),
              Text(
                rating,
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                size: 12,
                color: Color(0xFF53577A),
              ),
              SizedBox(width: 4),
              Text(
                location,
                style: TextStyle(
                  color: Color(0xFF53577A),
                  fontSize: 10,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

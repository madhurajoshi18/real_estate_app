import 'package:flutter/material.dart';

class TopLocations extends StatelessWidget {
  final String imageUrl;
  final String name;

  TopLocations({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 8),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 10,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.30,
            ),
          ),
        ],
      ),
    );
  }
}

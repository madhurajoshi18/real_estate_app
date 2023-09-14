import 'package:flutter/material.dart';

class TopAgentsWidget extends StatelessWidget {
  const TopAgentsWidget({
    required this.circleAvatarImageUrl,
    required this.number,
    required this.name,
    required this.rating,
    required this.homeSold,
    required this.onTap,
  });

  final String circleAvatarImageUrl;
  final int number;
  final String name;
  final double rating;
  final int homeSold;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 150,
        height: 200,
        color: Color(0xFFF5F4F7),
        child: Stack(
          children: [
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                color: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  '#$number',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.24,
                  ),
                ),
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(circleAvatarImageUrl),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.42,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '$rating',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.home,
                        color: Color(0xFF242B5C),
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '$homeSold Sold',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

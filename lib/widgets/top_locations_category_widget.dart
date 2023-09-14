import 'package:flutter/material.dart';

class TopLocationsCategoryWidget extends StatelessWidget {
  const TopLocationsCategoryWidget({
    required this.imageUrl,
    required this.number,
    required this.name,
    required this.onTap,
  });

  final String imageUrl;
  final int number;
  final String name;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 150,
        height: 250,
        color: Color(0xFFF5F4F7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      color: Color(0xFF8B8C83F),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        '#$number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: GestureDetector(
                onTap: onTap,
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      letterSpacing: 0.36,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

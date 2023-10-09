import 'package:flutter/material.dart';

class ExploreSearch extends StatelessWidget {
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
                top: 120,
                left: 30,
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
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
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
                top: 210,
                left: 30,
                child: Container(
                  width: 330,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Text(
                              'Recent Search',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Clear',
                              style: TextStyle(
                                color: Color(0xFF1F4C6B),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                height: 1,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      RowItem(label: 'Modern House'),
                      RowItem(label: 'Semarang'),
                      RowItem(label: 'Sky Dandelions Apartment'),
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

class RowItem extends StatelessWidget {
  final String label;

  RowItem({required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xFF53577A),
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.36,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {},
        ),
      ],
    );
  }
}

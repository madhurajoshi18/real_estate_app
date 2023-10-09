import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate_app/home/select_location.dart';

class ExploreEmpty extends StatefulWidget {
  @override
  State<ExploreEmpty> createState() => _ExploreEmptyState();
}

class _ExploreEmptyState extends State<ExploreEmpty> {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => SelectLocation(),
    );
  }

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
                top: 60,
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
                      icon: Icon(
                        FontAwesomeIcons.sliders,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _showUserSuccessBottomSheet(context);
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
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
                top: 680,
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
                              '!',
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
                        'Nearby Me',
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
                top: 740,
                left: 10,
                right: 10,
                child: Container(
                  width: 327,
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF1F4C6B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: SizedBox(
                    width: 307,
                    child: Text(
                      'Can’t found real estate nearby you',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
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
      ),
    );
  }

  void _showSelectLocationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SelectLocation(),
    );
  }
}

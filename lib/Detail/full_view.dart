import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FullView extends StatefulWidget {
  @override
  State<FullView> createState() => _FullViewState();
}

class _FullViewState extends State<FullView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/200/300'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Align(
              alignment: Alignment.topLeft,
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 40,
              height: 83,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
              ),
              child: Icon(
                FontAwesomeIcons.angleDoubleLeft,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 40,
              height: 83,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                  ),
                ),
              ),
              child: Icon(
                FontAwesomeIcons.angleDoubleRight,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 150,
            child: Container(
              width: 122,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xAF1F4C6B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Center(
                child: Text(
                  'Living Room',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 90,
            bottom: 380,
            child: Container(
              width: 35,
              height: 35,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.800000011920929),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 9.42,
                    top: 9.33,
                    child: Container(
                      width: 16.15,
                      height: 16.33,
                      decoration: ShapeDecoration(
                        color: Color(0xFF8BC83F),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 121,
              height: 54,
              padding: const EdgeInsets.only(
                top: 12,
                left: 14,
                right: 14,
                bottom: 14,
              ),
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.800000011920929),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jati dining table',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '2',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 8,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: ' people capacity',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 8,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 160,
            child: Icon(Icons.chat_outlined, color: Colors.white),
          ),
          Positioned(
            left: 40,
            bottom: 10,
            child: Container(
              width: 327,
              height: 120,
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
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            width: 168,
                            height: 104,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://picsum.photos/200/300'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 6,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.red,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Color(0xAF234F68),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'Apartment',
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
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sky Dandelions \nApartment',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 12,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w800,
                              height: 1.50,
                              letterSpacing: 0.36,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 16),
                              SizedBox(width: 5),
                              Text(
                                '4.9',
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
                              Icon(Icons.location_on,
                                  color: Color(0xFF53577A), size: 16),
                              SizedBox(width: 5),
                              Text(
                                'Jakarta, Indonesia',
                                style: TextStyle(
                                  color: Color(0xFF53577A),
                                  fontSize: 8,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
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
          ),
        ],
      ),
    );
  }
}

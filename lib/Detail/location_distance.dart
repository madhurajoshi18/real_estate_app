import 'package:flutter/material.dart';

class LocationDistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      maxChildSize: 1.0,
      minChildSize: 0.2,
      builder: (context, controller) {
        return Container(
          height: 1100,
          width: 375,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Container(
                width: 60,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF53577A),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Location Distance',
                    style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(width: 130),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      minimumSize: Size(70, 50),
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: 350,
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.60, color: Color(0xFFF5F4F7)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Icon(Icons.location_on, color: Color(0xFF242B5C)),
                    ),
                    SizedBox(width: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '2.5',
                            style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                          TextSpan(
                            text: ' km',
                            style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                          TextSpan(
                            text:
                                ' from Srengseng, Kembangan, \nWest Jakarta City, Jakarta 11630',
                            style: TextStyle(
                                color: Color(0xFF53577A),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 350,
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.60, color: Color(0xFFF5F4F7)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Icon(Icons.location_on, color: Color(0xFF242B5C)),
                    ),
                    SizedBox(width: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '18.2',
                            style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                          TextSpan(
                            text: ' km',
                            style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                          TextSpan(
                            text:
                                ' from Petompon, Kota \nSemarang, Jawa Tengah 50232',
                            style: TextStyle(
                                color: Color(0xFF53577A),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                letterSpacing: 0.36,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

class ExtraInformationError extends StatefulWidget {
  @override
  State<ExtraInformationError> createState() => _ExtraInformationErrorState();
}

class _ExtraInformationErrorState extends State<ExtraInformationError> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.2,
      builder: (context, controller) {
        return Container(
          height: 1300,
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
              SizedBox(height: 16),
              Container(
                width: 150,
                height: 150,
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.55, 0.53),
                              radius: 0.29,
                              colors: [Color(0x6B234F68), Color(0xFF234F68)],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Opacity(
                        opacity: 0.15,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.55, 0.53),
                              radius: 0.29,
                              colors: [Color(0x6B234F68), Color(0xFF234F68)],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Opacity(
                        opacity: 0.1,
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              center: Alignment(0.55, 0.53),
                              radius: 0.29,
                              colors: [Color(0x6B234F68), Color(0xFF234F68)],
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 40,
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment(0.55, 0.53),
                            radius: 0.29,
                            colors: [Color(0x6B234F68), Color(0xFF234F68)],
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.75,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Aw snap, Something \n',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                        letterSpacing: 0.75,
                      ),
                    ),
                    TextSpan(
                      text: 'error',
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w800,
                        height: 1.60,
                        letterSpacing: 0.75,
                      ),
                    ),
                    TextSpan(
                      text: ' happened',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w500,
                        height: 1.60,
                        letterSpacing: 0.75,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 271,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF53577A),
                    fontSize: 12,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    height: 1.67,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(158, 70),
                    ),
                    child: Text(
                      'Close',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(158, 70),
                    ),
                    child: Text(
                      'Retry',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.48,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/explore/example_data.dart';

class SelectLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select Location',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(width: 160),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      minimumSize: Size(79, 50),
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
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Color(0xFF234F68),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xFF234F68),
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 232,
                      child: Text(
                        'Srengseng, Kembangan, West Jakarta City, Jakarta 11630',
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
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0xFFECEDF3),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.60, color: Color(0xFFECEDF3)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    SizedBox(
                      width: 232,
                      child: Text(
                        'Petompon, Kec. Gajahmungkur, Kota Semarang, Jawa Tengah 50232',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 278,
                  height: 63,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => ExampleData());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Choose Location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.48,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

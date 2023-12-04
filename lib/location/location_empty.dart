import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/location/choose_location.dart';
import 'package:real_estate_app/utils/app_constants.dart';

class LocationEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              width: 86,
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: ShapeDecoration(
                color: Color(0xFFF5F4F7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Center(
                child: Text(
                  'skip',
                  style: TextStyle(
                    color: Color(0xFF393E67),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 274,
                  height: 80,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Add your ',
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
                              text: 'location ',
                              style: TextStyle(
                                color: Color(0xFF1F4C6B),
                                fontSize: 25,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w800,
                                height: 1.4,
                                letterSpacing: 0.75,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'You can edit this later on your account setting.',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 12,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Container(
                  width: 327,
                  height: 300,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(AppConstants.RANDOM_IMAGE_URL),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        width: 327,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Select on Map',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 1.67,
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Location Detail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(Icons.location_on),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        // Handle action when the arrow button is pressed
                      },
                    ),
                  ),

                  onChanged: (value) {
                    // Handle changes in entered location
                  },
                  // Add any validation or controller as required
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: Container(
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LinearProgressIndicator(
                        value: 0.33,
                        backgroundColor: Color(0xF53577A),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xFF242B5C),
                        ),
                        minHeight: 3,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 278,
                  height: 63,
                  decoration: ShapeDecoration(
                    color: Color(0xFF8BC83F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(() => ChooseLocation());
                    },
                    child: Center(
                      child: Text(
                        'Next',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

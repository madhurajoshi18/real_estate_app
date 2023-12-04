import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/add%20estate/extra_information.dart';

class Photos extends StatefulWidget {
  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
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
        title: Text(
          "Add Listing",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 14,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
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
                  Icons.arrow_forward_ios,
                  color: Color(0xFF234F68),
                ),
                onPressed: () {
                  Get.to(() => ExtraInformation());
                },
                iconSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Add ',
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
                        text: 'photos',
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
                        text: ' to your \nlisting',
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
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 159,
                    height: 161,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://picsum.photos/200/300',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 159,
                    height: 161,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://picsum.photos/200/300',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 159,
                    height: 161,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              'https://picsum.photos/200/300',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 18, 32, 47),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Center(
                  child: Container(
                    width: 190,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8BC83F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => ExtraInformation());
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
          ],
        ),
      ),
    );
  }
}

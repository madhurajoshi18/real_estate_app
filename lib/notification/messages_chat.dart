import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/notification/messages_call.dart';

class MessagesChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 60, left: 5, right: 5),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
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
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU',
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Milano',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.42,
                          ),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 10,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 180),
                    IconButton(
                      icon: Icon(Icons.phone_outlined),
                      onPressed: () {
                        Get.to(() => MessagesCall());
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 124,
                    height: 24,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: ShapeDecoration(
                      color: Color(0xAF1F4C6B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'December 12, 2022',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 350,
                    height: 170,
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
                              child: Container(
                                width: 170,
                                height: 150,
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
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
                                    height: 1.4,
                                    letterSpacing: 0.36,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    SizedBox(width: 5),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Color(0xFF53577A),
                                        fontSize: 10,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
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
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 277,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod?',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 270,
                    height: 16,
                    child: Row(
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Color(0xFF8BC83F),
                        ),
                        SizedBox(width: 210),
                        Text(
                          '10:45',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFA1A4C1),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 310,
                    height: 92,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: Color(0xFF234F68),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' tempor incididunt ut labore et dolore magna \naliqua. Ut enim ad minim veniam, quis nostrud \nexercitation.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            height: 1.2,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 270,
                    height: 16,
                    child: Text(
                      '10:46',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFFA1A4C1),
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 130),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 330,
                    height: 70,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ]),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_outlined,
                              color: Colors.black),
                        ),
                        Expanded(
                          child: Text(
                            'Say Something',
                            style: TextStyle(
                              color: Color(0xFFA1A4C1),
                              fontSize: 14,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.36,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF8BC83F),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.send_outlined, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

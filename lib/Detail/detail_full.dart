import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate_app/Detail/full_view.dart';
import 'package:real_estate_app/Detail/location_distance.dart';
import 'package:real_estate_app/Detail/view_all_reviews.dart';
import 'package:real_estate_app/Detail/view_on_map.dart';
import 'package:real_estate_app/utils/app_constants.dart';
import 'package:real_estate_app/widgets/nearby_estates.dart';

class DetailFull extends StatefulWidget {
  @override
  State<DetailFull> createState() => _DetailFullState();
}

class _DetailFullState extends State<DetailFull> {
  void _showUserSuccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => LocationDistance(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 10),
                    height: 524,
                    width: 375,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        AppConstants.RANDOM_IMAGE_URL,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    left: 30,
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
                  Positioned(
                    top: 65,
                    right: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.upload,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 65,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 15,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xAF1F4C6B),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            '4.9',
                            style: TextStyle(
                              color: Color(0xFFF5F4F7),
                              fontSize: 20,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 100,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Color(0xAF1F4C6B),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'Apartment',
                        style: TextStyle(
                          color: Color(0xFFF5F4F7),
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 150,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 80,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1.50, color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 20,
                            child: Text(
                              "+ 3",
                              style: TextStyle(
                                color: Color(0xFFECEDF3),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      'Wings Tower',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      '\$ 220',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Color(0xFF242B5C)),
                        SizedBox(width: 5),
                        Text(
                          'Jakarta, Indonesia',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 12,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 170),
                    Text(
                      'per month',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 72,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFF234F68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Rent',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 67,
                      height: 47,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 17.50),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF5F4F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 10,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ),
                    SizedBox(width: 150),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => FullView());
                      },
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF5F4F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '360°',
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 10,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              Icon(Icons.rotate_left, color: Color(0xFF242B5C))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                child: Divider(
                  color: Color(0xFFF5F4F7),
                  thickness: 2,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 350,
                height: 85,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anderson',
                          style: TextStyle(
                            color: Color(0xFF242B5C),
                            fontSize: 14,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.42,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Real Estate Agent',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 9,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.27,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 160),
                    Icon(Icons.chat_rounded, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '2 Bedroom',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '1 Bathroom',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '2 Bedroom',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 21,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location & Public Facilities',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        height: 1.4,
                        letterSpacing: 0.54,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
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
                    SizedBox(width: 20),
                    Text(
                      'St. Cikoko Timur, Kec. Pancoran, Jakarta\nSelatan, Indonesia 12770',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 50,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF242B5C),
                      ),
                      SizedBox(width: 30),
                      Text(
                        '2.5',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 1.4,
                          letterSpacing: 0.36,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'km',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.36,
                              ),
                            ),
                            TextSpan(
                              text: ' from your location',
                              style: TextStyle(
                                color: Color(0xFF53577A),
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40),
                      IconButton(
                        onPressed: () {
                          _showUserSuccessBottomSheet(context);
                        },
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF53577A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 110,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '2 Hospital',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 140,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '4 Gas Stations',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 120,
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      '2 Schools',
                      style: TextStyle(
                        color: Color(0xFF53577A),
                        fontSize: 12,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.36,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 327,
                    height: 235,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/200/300"),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 327,
                      height: 50,
                      decoration:
                          BoxDecoration(color: Colors.white.withOpacity(0.5)),
                    ),
                  ),
                  Positioned(
                    left: 117,
                    bottom: 15,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => ViewOnMap());
                      },
                      child: Text(
                        'View on Map',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 14,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Cost of Living',
                      style: TextStyle(
                        color: Color(0xFF242B5C),
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.54,
                      ),
                    ),
                    SizedBox(width: 150),
                    Text(
                      'view details',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 10,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 327,
                height: 85,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$ 830',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                            TextSpan(
                              text: '/month*',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '*From average citizen spend around this location',
                        style: TextStyle(
                          color: Color(0xFF53577A),
                          fontSize: 9,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.27,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 327,
                    height: 85,
                    decoration: ShapeDecoration(
                      color: Color(0xAF1F4C6B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 15,
                    child: Container(
                      width: 53,
                      height: 53,
                      padding: const EdgeInsets.all(15),
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.15000000596046448),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                      ),
                      child: Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    bottom: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.yellowAccent,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.54,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          'From 112 reviewers',
                          style: TextStyle(
                            color: Color(0xFF53577A),
                            fontSize: 9,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.27,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Positioned(
                    right: 50,
                    top: 30,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 35,
                    top: 30,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 30,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://picsum.photos/200/300"),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
                height: 110,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF5F4F7)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                      ),
                      radius: 40,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kurt Millins",
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.36,
                                ),
                              ),
                              SizedBox(width: 80),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt \nut labore et dolore magna aliqua. ",
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              letterSpacing: 0.30,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "8 Days ago",
                            style: TextStyle(
                              color: Color(0xFFA1A4C1),
                              fontSize: 8,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 370,
                height: 110,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFF5F4F7)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                      ),
                      radius: 40,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Kay Swanson",
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 12,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.36,
                                ),
                              ),
                              SizedBox(width: 80),
                              Icon(Icons.star_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_outlined,
                                  color: Colors.yellowAccent, size: 16),
                              Icon(Icons.star_border_outlined,
                                  color: Colors.yellowAccent, size: 16),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            "'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, \ntotam rem aperia.",
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 10,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              letterSpacing: 0.30,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "12 Days ago",
                            style: TextStyle(
                              color: Color(0xFFA1A4C1),
                              fontSize: 8,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 1.2,
                              letterSpacing: -0.16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 327,
                height: 50,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F4F7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => ViewAllReviews());
                  },
                  child: Center(
                    child: Text(
                      'View all reviews',
                      style: TextStyle(
                        color: Color(0xFF1F4C6B),
                        fontSize: 14,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nearby From this Location',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Wings Tower",
                    rating: "4.9",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 220/month",
                  ),
                  SizedBox(width: 30),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Mill Per House",
                    rating: "4.8",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 270/month",
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Bungalow House",
                    rating: "4.7",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 235/month",
                  ),
                  SizedBox(width: 30),
                  NearbyEstates(
                    imageUri: "https://picsum.photos/200/300",
                    name: "Sky Dadelions Apartment",
                    rating: "4.8",
                    location: "Jakarta, Indonesia",
                    rent: "\$ 290/month",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            "My Favorite",
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon:
                  Icon(Icons.delete_outline_outlined, color: Color(0xFF242B5C)),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.54,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'estates',
                    style: TextStyle(
                      color: Color(0xFF242B5C),
                      fontSize: 18,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.54,
                    ),
                  ),
                  SizedBox(width: 179),
                  Container(
                    width: 93,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.to(() => FavoritesHorizontal());
                                      },
                                      child: Container(
                                        width: 12,
                                        height: 12,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 6.67,
                                              top: 6.67,
                                              child: Opacity(
                                                opacity: 0.50,
                                                child: Container(
                                                  width: 5.33,
                                                  height: 5.33,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFA1A4C1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 6.67,
                                              child: Opacity(
                                                opacity: 0.50,
                                                child: Container(
                                                  width: 5.33,
                                                  height: 5.33,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFA1A4C1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 6.67,
                                              top: 0,
                                              child: Opacity(
                                                opacity: 0.50,
                                                child: Container(
                                                  width: 5.33,
                                                  height: 5.33,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFA1A4C1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Opacity(
                                                opacity: 0.50,
                                                child: Container(
                                                  width: 5.33,
                                                  height: 5.33,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFA1A4C1),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 12,
                                      height: 12,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 0.67),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 12,
                                            height: 1.33,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFA1A4C1),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                            ),
                                          ),
                                          Container(
                                            width: 12,
                                            height: 5.33,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF242B5C),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
                                            ),
                                          ),
                                          Container(
                                            width: 12,
                                            height: 1.33,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFA1A4C1),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(2)),
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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
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
                              color: Color(0xFF8BC83F),
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
                                Icons.favorite,
                                color: Colors.white,
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
                              'House',
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bali Beachview \nVilla',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 1.4,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Color(0xFF242B5C), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Color(0xFF53577A), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  'Bali, Indonesia',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                            Row(
                              children: [
                                Text(
                                  '\$ 420',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.48,
                                  ),
                                ),
                                Text(
                                  '/month',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    letterSpacing: 0.24,
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
              SizedBox(height: 20),
              Container(
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
                              color: Color(0xFF8BC83F),
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
                                Icons.favorite,
                                color: Colors.white,
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wings Tower',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 1.4,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Color(0xFF242B5C), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
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
                            SizedBox(height: 50),
                            Row(
                              children: [
                                Text(
                                  '\$ 220',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.48,
                                  ),
                                ),
                                Text(
                                  '/month',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    letterSpacing: 0.24,
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
              SizedBox(height: 20),
              Container(
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
                              color: Color(0xFF8BC83F),
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
                                Icons.favorite,
                                color: Colors.white,
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
                              'House',
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wayside Modern \nHouse',
                              style: TextStyle(
                                color: Color(0xFF242B5C),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                height: 1.4,
                                letterSpacing: 0.36,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Color(0xFF242B5C), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  '4.4',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    height: 1.4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: Color(0xFF53577A), size: 16),
                                SizedBox(width: 5),
                                Text(
                                  'Semarang, Indonesia',
                                  style: TextStyle(
                                    color: Color(0xFF53577A),
                                    fontSize: 8,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                            Row(
                              children: [
                                Text(
                                  '\$ 220',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.48,
                                  ),
                                ),
                                Text(
                                  '/month',
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 8,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    height: 1,
                                    letterSpacing: 0.24,
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
            ],
          ),
        ),
      ),
    );
  }
}

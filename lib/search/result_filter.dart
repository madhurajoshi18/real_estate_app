import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultFilter extends StatelessWidget {
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
            "Search Results",
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
              icon: Icon(FontAwesomeIcons.sliders, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: ShapeDecoration(
                      color: Color(0xFFF5F4F7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Modern House",
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Color(0xFF242B5C),
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Found',
                        style: TextStyle(
                          color: Color(0xFF242B5C),
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.54,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '128',
                        style: TextStyle(
                          color: Color(0xFF234F68),
                          fontSize: 18,
                          fontFamily: 'Montserrat',
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
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.54,
                        ),
                      ),
                      SizedBox(width: 109),
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
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
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
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFFA1A4C1),
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
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFFA1A4C1),
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
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFFA1A4C1),
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
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFFA1A4C1),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(2),
                                                        ),
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
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                          BorderRadius.circular(
                                                              2)),
                                                ),
                                              ),
                                              Container(
                                                width: 12,
                                                height: 5.33,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF242B5C),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2)),
                                                ),
                                              ),
                                              Container(
                                                width: 12,
                                                height: 1.33,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFFA1A4C1),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2)),
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
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0x269A9A9A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'House',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0x269A9A9A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Semarang',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: Color(0x269A9A9A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF8BC83F),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.close, color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '\$150 - \$350',
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 10,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.30,
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
                                'Bridgeland Modern \nHouse',
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
                                      color: Colors.yellow, size: 16),
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
                                    '\$ 260',
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
                                      color: Colors.yellow, size: 16),
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
                                'Schoolview House',
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
                                      color: Colors.yellow, size: 16),
                                  SizedBox(width: 5),
                                  Text(
                                    '4.6',
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
                                    '\$ 245',
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
      ),
    );
  }
}

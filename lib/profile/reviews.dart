import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
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
            "All reviews",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF242B5C),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F4F7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_g_7YVzERozXI_mfnbSPkggiXqlljwtCQXw&usqp=CAU",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Mandella",
                            style: TextStyle(
                              color: Color(0xFF242B5C),
                              fontSize: 14,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.42,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Owner",
                            style: TextStyle(
                              color: Color(0xFF53577A),
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 140),
                      IconButton(
                        icon: Icon(Icons.chat_rounded, color: Colors.black),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildStarRating("All", Color(0xFF234F68)),
                          SizedBox(width: 10),
                          _buildStarRating("1"),
                          SizedBox(width: 10),
                          _buildStarRating("2"),
                          SizedBox(width: 10),
                          _buildStarRating("3"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 370,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://picsum.photos/200/300",
                              width: 74,
                              height: 36,
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fairview Apartment",
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Color(0xFF242B5C)),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Icon(Icons.location_on,
                                      color: Color(0xFF242B5C)),
                                  SizedBox(width: 4),
                                  Text(
                                    "Semarang, Indonesia",
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 370,
                        height: 110,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFF5F4F7)),
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
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Jin Martin",
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 12,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.36,
                                        ),
                                      ),
                                      SizedBox(width: 80),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color((0xFF234F68)), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
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
                                    "10 mins ago",
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
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 370,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFECEDF3)),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://picsum.photos/200/300",
                              height: 36,
                              width: 74,
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Schoolview House",
                                style: TextStyle(
                                  color: Color(0xFF242B5C),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Color(0xFF242B5C)),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Icon(Icons.location_on,
                                      color: Color(0xFF242B5C)),
                                  SizedBox(width: 4),
                                  Text(
                                    "Jakarta, Indonesia",
                                    style: TextStyle(
                                      color: Color(0xFF53577A),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 370,
                        height: 110,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF5F4F7),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFF5F4F7)),
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
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Mindy Lane",
                                        style: TextStyle(
                                          color: Color(0xFF242B5C),
                                          fontSize: 12,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.36,
                                        ),
                                      ),
                                      SizedBox(width: 80),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color((0xFF234F68)), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                      Icon(Icons.star,
                                          color: Color(0xFF234F68), size: 16),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.",
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
                                    "10 mins ago",
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
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFECEDF3)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    "https://picsum.photos/200/300",
                                    height: 36,
                                    width: 74,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fairview Apartment",
                                      style: TextStyle(
                                        color: Color(0xFF242B5C),
                                        fontSize: 16,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Color(0xFF242B5C)),
                                        SizedBox(width: 4),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                            color: Color(0xFF53577A),
                                            fontSize: 14,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Icon(Icons.location_on,
                                            color: Color(0xFF242B5C)),
                                        SizedBox(width: 4),
                                        Text(
                                          "Semarang, Indonesia",
                                          style: TextStyle(
                                            color: Color(0xFF53577A),
                                            fontSize: 14,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Container(
                              width: 370,
                              height: 110,
                              decoration: ShapeDecoration(
                                color: Color(0xFFF5F4F7),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFF5F4F7)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Samuel Ella",
                                              style: TextStyle(
                                                color: Color(0xFF242B5C),
                                                fontSize: 12,
                                                fontFamily: 'Lato',
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 0.36,
                                              ),
                                            ),
                                            SizedBox(width: 60),
                                            Icon(Icons.star,
                                                color: Color(0xFF234F68),
                                                size: 16),
                                            Icon(Icons.star,
                                                color: Color(0xFF234F68),
                                                size: 16),
                                            Icon(Icons.star,
                                                color: Color((0xFF234F68)),
                                                size: 16),
                                            Icon(Icons.star,
                                                color: Color(0xFF234F68),
                                                size: 16),
                                            Icon(Icons.star,
                                                color: Color(0xFF234F68),
                                                size: 16),
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
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
                                          "10 mins ago",
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
      ),
    );
  }

  Widget _buildStarRating(String label,
      [Color backgroundColor = const Color(0xFFE8E8E8)]) {
    return Container(
      height: 50,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.orange),
            SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
